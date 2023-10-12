# Interface

为了了解 Golang 是如何实现 interface 的，我们首先需要编译一段简短的代码，其中包括空接口和非空接口以及他们的实现，通过阅读其汇编代码我们便能看到在汇编层次 interface 实现的机理，随后根据汇编代码深入了解 runtime 是如何处理这些实现的。

运行如下代码即可获得没有进行优化和内联的 Plain9 汇编代码。

```bash
GOOS=linux GOARCH=amd64 go tool compile -S -N -l interface.go > interface.s && rm interface.o
```
