---
Status: Archive
Author: lijie
Tags: Golang,Mutex
Published: 2023-07-29
---
<!--toc:start-->
- [Mutex-锁实现](#mutex-锁实现)
  - [基础知识](#基础知识)
    - [信号量](#信号量)
      - [信号量和锁](#信号量和锁)
    - [自旋锁](#自旋锁)
  - [Go-的锁实现](#go-的锁实现)
  - [V1-简单实现](#v1-简单实现)
  - [V2-新协程参与锁竞争](#v2-新协程参与锁竞争)
  - [V3-新协程权重加强](#v3-新协程权重加强)
  - [V4-优化老协程饥饿问题](#v4-优化老协程饥饿问题)
- [链接](#链接)
<!--toc:end-->
# Mutex-锁实现

## 基础知识

### 信号量

在 OS 中存在对信号量的两种操作，P 和 V 前者将 Semaphore S 减 1，后者将其加 1。任何程序线程进入互斥区时都会首先尝试 P 操作，如果 S 变为负数那么此线程将会被阻塞，如果 S 依然为正数那么此线程将可以进入互斥区。当线程离开互斥区的时候将会自动使用 V 操作释放占用的资源从而允许在第一种情况下被阻塞的其他线程进入互斥区。

### 信号量和锁

看起来两者一致，比如一个最大值为 1 的 Semaphore 在实践使用上等效于一个 Mutex，在这个层次上可以说信号量是锁的全集，不过在语义上两者完全不同。锁一般只是用来控制一个资源不会被同时访问，而信号量最重要的工作是用来保证一系列运行操作的有序性。因此如果使用信号量实现锁我们也可以让这个锁带上有序性的特点，比如多线程都解锁且特定只允许特定顺序解锁才能释放一个 Mutex 保护的互斥区的进入许可。如果使用其他的譬如 Spinlock 的方式实现则无法做到这一点(此处指仅仅靠 Spinlock 无法做到)。

### 自旋锁

一种最常见实现自旋锁的方式叫 CAS 其主要原理就如其全称一样 Compare And Swap 通过一个循环以非阻塞当前线程的方式检查一个值是否是期望中的值，直到命中条件将值赋值为特定值以标记获得了资源也就是解锁。其实现的真正基础实际上来自于 CPU 级别的指令支持，特点便是使用此种方式的线程将不会阻塞而是真实的占用 CPU 时间从而避免了切换线程态过程时用户态内核态切换产生的大量开销，缺点自然是由于无法保证自旋一定能获得锁从而导致可能的 CPU 无效占用，因此在实践实现中往往会为其设置一个最长自旋时间。

## Go-的锁实现

有了上述基础知识后便可以进入到实现分析上了，考虑到锁实现的阶段性，介绍会从其演化的四个阶段说起。

- 简单实现
- 新协程参与锁竞争
- 新协程权重加强
- 优化老协程饥饿问题

## V1-简单实现

最初的实现可以通过 [`mutex.go`](https://github.com/golang/go/blob/d90e7cbac65c5792ce312ee82fbe03a5dfc98c6f/src/pkg/sync/mutex.go) 看到，稍微翻一下便可以理解何谓 “简单”，全部实现只有不到 120 行代码，即使算上平台汇编也不会超过 200 行。 也可以看到这是一个结合了 `cas` 和 `semaphore` 的初版实现方式。其中 `cas` 用于处理上锁解锁 `semaphore` 用于处理协程阻塞于唤醒。

```go
type Mutex struct {
	key  int32
	sema int32
}

func xadd(val *int32, delta int32) (new int32) {
	for {
		v := *val
		if cas(val, v, v+delta) {
			return v + delta
		}
	}
	panic("unreached")
}

func (m *Mutex) Lock() {
	if xadd(&m.key, 1) == 1 {
		// changed from 0 to 1; we hold lock
		return
	}
	semacquire(&m.sema)
}
```

看到如上代码当调用 `Lock` 时如果 `xadd` 返回结果为 1 说明在 add 前的值为 0 此时说明锁没有被其他协程获得，因此此协程获得该锁 Lock 方法直接返回。如果调用 `Unlock` 那就和 `Lock` 函数逻辑反之。
可以看到第一版的实现非常简略，没有超时控制，没有权重控制，全凭多个协程谁运气更好。

## V2-新协程参与锁竞争


## V3-新协程权重加强

## V4-优化老协程饥饿问题


# 链接

1 [Deep Understanding of Golang Mutex](https://scribe.rip/deep-understanding-of-golang-mutex-9964b02c56e9)

2 [`v1 mutex.go`](https://github.com/golang/go/blob/d90e7cbac65c5792ce312ee82fbe03a5dfc98c6f/src/pkg/sync/mutex.go)