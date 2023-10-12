# Go Memalloc

几乎所有语言都拥有自己的内存模型，Go 也不例外。本着大道至简的原则 Go 基本上可以说是将 TCMalloc 内存分配和管理的模型模仿了个遍，其主要思想简单的说便是分级分配（大小），分类型分配（值类型，指针类型），分层分配（线程缓存，公共缓存，大缓存）三种，通过在最合适的位置管理最契合的 obj/ptr 来尽可能提高 Heap 的效率。

## 内存分配函数 memalloc

```go
package main

import "fmt"

type tmp struct {
	a int
	b *string
}

func main() {
  var a *tmp
  a = &tmp{a: 1, b: nil}
  fmt.Println(a)
}
```

我们先看一段简短的代码，通过运行如下指令可以看到 `./memalloc.go:12:6: &tmp{...} escapes to heap` 我们定义的 `tmp` 对象被分配到了堆上（原因是其被打印函数传入被转换为了 interface）

```bash
$ go build -gcflags="-m" memalloc.go
# command-line-arguments
# ./memalloc.go:13:13: inlining call to fmt.Println
# ./memalloc.go:12:6: &tmp{...} **escapes to heap**
# ./memalloc.go:13:13: ... argument does not escape
```

运行如下指令查看其对应的汇编代码

```bash
GOOS=linux GOARCH=amd64 go build -gcflags="-S -N -l" memalloc.go 1> memalloc.s 2>&1 && rm memalloc
```

可以看到如下关键代码

```asm
main.main STEXT size=217 args=0x0 locals=0x60 funcid=0x0 align=0x0
    ....... 省略 ......
    0x0018 00024 	MOVQ	$0, main.a+24(SP)
    0x0021 00033 	LEAQ	type:main.tmp(SB), AX
    0x0028 00040 	CALL	runtime.newobject(SB) <- 此处调用了 newobject (SB)
    ....... 省略 ......
```

在 Go 源码可以看到 [`newobject`](https://github.com/golang/go/blob/f57f02fcd519a86683c47a444e0e24a086fea8e0/src/runtime/malloc.go#L1250-L1255) 其参数为 [`*_type`](https://github.com/golang/go/blob/f57f02fcd519a86683c47a444e0e24a086fea8e0/src/runtime/type.go#L31-L52) 此处不赘述 `*_type` 的数据来源 (汇编中 `type:main.tmp SRODATA size=144` 处感兴趣自行阅读)。

可以看到
