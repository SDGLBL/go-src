# Chapter 2: Go 协程

​		在这个章节将会介绍Go协程的实现机制，启动与执行方式，还有一点

## Go程序的启动

​		首先创建一个非常简单的main.go文件，内容如下:

```go
package main

func main() {}
```

​		使用如下命令找到其入口执行处:

```bash
$ go tool compile goroutine.go
$ go tool link goroutine.o
$ objdump -f a.out

a.out:     file format elf64-x86-64
architecture: i386:x86-64, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x0000000000453860	
```

​		可以看到**start address**是`0x0000000000453860`，使用如下命令反汇编执行文件查看这个位置对应的汇编代码:

```bash
$ objdump -d a.out > disassembly.s 
$ cat disassembly.s | grep 453860
0000000000453860 <_rt0_amd64_linux>:
453860:       e9 3b e3 ff ff          jmpq   451ba0 <_rt0_amd64>
```

​    	可以看到整个程序的入口函数是 `_rt0_amd64_linux`，接下来便是要在go的src代码中找到这个函数的定义，实际上这个函数便位于 `src/runtime/rt0_linux_amd64.s` 中打开便能看到如下汇编代码。顺着JMP一直我们将会找到真正开始执行的函数叫做 `rt0_go`，整个跳转调用过程设计三个文件三个汇编函数他们名字与所处文件路径&行数如下。

```asm
TEXT _rt0_amd64_linux(SB),NOSPLIT,$-8
	JMP	_rt0_amd64(SB)

TEXT _rt0_amd64(SB),NOSPLIT,$-8
	MOVQ	0(SP), DI	// argc
	LEAQ	8(SP), SI	// argv
	JMP	runtime·rt0_go(SB)
	
TEXT runtime·rt0_go(SB),NOSPLIT|TOPFRAME,$0
	# 过长省略
```

 		接下来的分析中将会忽视掉 `rt0_go` 中对程序启动主体逻辑理解没有影响的代码，我们只关注g0是什么，g0的关键filed是如何被初始化的，g0在后续执行中扮演的角色，此外由于此过程冗长复杂，因此将函数分为多个部分来介绍。
		首先是基础的栈空间分配，仔细阅读了chapter-1的读者直接就能看出这部分只是简单分配了48字节的栈空间，顺便将argc与argv指针保存到了`SP+24`与`SP+32`的栈位置上。

```asm
MOVQ	DI, AX		// argc
MOVQ	SI, BX		// argv
SUBQ	$(5*8), SP		// 3args 2auto
ANDQ	$~15, SP
MOVQ	AX, 24(SP)
MOVQ	BX, 32(SP)
```

​    	接下来便终于到了 *g0* 登场的时候了，这部分汇编首先将 *g0* 存储到了 `DI` Reg上, 这里我们看到汇编中 *g0* 的定义是 `runtime·g0(SB)`，在链接阶段这个符号会被链接到一个可执行文件的data section的静态变量上，而这个静态变量的定义就在 `src/runtime/proc.go` 中。

```asm
MOVQ	$runtime·g0(SB), DI
LEAQ	(-64*1024+104)(SP), BX
MOVQ	BX, g_stackguard0(DI)
MOVQ	BX, g_stackguard1(DI)
MOVQ	BX, (g_stack+stack_lo)(DI)
MOVQ	SP, (g_stack+stack_hi)(DI)
```

```go
type stack struct {
    lo uintptr
    hi uintptr
}

type g struct {
    stack       stack   // offset known to runtime/cgo
    stackguard0 uintptr // offset known to liblink
    stackguard1 uintptr // offset known to liblink
    // ......省略.......
}
```

