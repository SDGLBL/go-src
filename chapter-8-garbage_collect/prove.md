### Prove Hybrid Write Barrier / 混合写屏障

不同于直接证明混合写屏障满足弱三色不变原则，我们先证明混合写屏障满足变动版弱三色不变原则也就是引理 1

B,G,W,H 分别代表黑色，灰色，白色，全部堆对象集合
X 代表全局对象，其不可能为白色

$$
B_i \in Black \\
G_i \in Green \\
W_i \in White \\
X \in Global \\
H = \lbrace Black,Green,White \rbrace \\
{\forall}B{\rightarrow}W \enspace {\exists}G{\rightarrow}W_1{\rightarrow} \cdots {\rightarrow}W_{n}{\rightarrow}W \\
\tag{T1}
$$

引理 1--- 所有被黑色对象直接指向的白色对象都处于灰色保护下（需要证明）

$$
O_1 \rightarrow \cdots \rightarrow O_n \wedge O_1 \in H \iff O_i \in H \space ( 1 \le i \le n )
\tag{T2}
$$

引理 2--- 不证自明, 堆对象只能指向堆对象所以 $O_1$ 为堆对象那它下游的对象一定都为堆对象

> 因为堆对象无法指向栈对象或者说即使指向了栈对象也会触发逃逸分析导致指向栈的对象移动到堆上，我们不能允许堆对象指向一个会随时随着程序运行被回收的内存区域（stack）对象

$$
T1 \iff {\forall}B \rightarrow O_1 \rightarrow \cdots \rightarrow O_{n-1} \rightarrow W \enspace {\exists}G{\rightarrow}W_1{\rightarrow} \cdots {\rightarrow}W_n{\rightarrow}W
\tag{T3}
$$

引理 3--- 如果引理 1 为真，那么所有被黑色对象直接/间接指向的白色对象都处于灰色保护下

证明：

1. 因为栈上对象只只能指向自己栈上对象或堆对象，又因为栈的颜色是原子改变的（要么全黑要么全白）因此不会出现黑指向白，所以 $O_1$ 一定是堆对象。
2. 又因为 $T2$ 所以$O_2$到$O_n$一定都为堆对象。
3. 如果$O_i$不存在那么引理 3 退回到$T1$。
4. 如果$O_i$中存在黑色对象那么回到证明开始并以此黑色对象为起点开始证明$T3$
5. 如果$O_i$中存在灰色对象那么$W$一定被灰色保护。
6. 如果$O_i$都为白色对象，那么因为$O_1$被黑色对象指向，因为$T1$所以$O_1$一定被某个灰色对象以 $G \rightarrow W_1 \rightarrow \cdots \rightarrow W_n \rightarrow O_1$的方式保护，那么$W$一定以$G \rightarrow W_1 \rightarrow \cdots \rightarrow W_n \rightarrow O_1 \rightarrow \cdots \rightarrow O_n \rightarrow W$这样的方式被灰色保护。

$$
{Stack \enspace is \enspace dark} \wedge {Stack \rightarrow  \cdots  \rightarrow W} \iff {\exists G \rightarrow W_1 \rightarrow \cdots \rightarrow W_n \rightarrow W} \tag{T4}
$$

引理 4--- 如果引理 3 为真，那么所有被黑色栈直接/间接指向的白色对象都处于灰色保护下

> Stack is dark 指代栈已经被扫描过

证明：

1. 如果 $W$ 可直接或间接被黑色栈指向，那么根据 $T3$ 可以确定 $W$ 一定被灰色保护。(黑色栈可以视为一个黑色对象)

$$
{X \rightarrow \cdots \rightarrow W} \iff {\exists G \rightarrow W_1 \rightarrow \cdots \rightarrow W_n \rightarrow W} \tag{T5}
$$

引理 4--- 如果引理 3 为真，那么所有被全局对象直接/间接指向的白色对象都处于灰色保护下

证明：

1. 如果 $W$ 可直接或间接被 X 指向，那么根据 $X$ 非白色的特性如果 $X$ 为黑那么根据 $T3$ 可以确定 $W$ 一定被灰色保护，否则如果 $X$ 为灰色那么 $W$ 显然已经处于灰色保护下了。

---

接下来证明修订版弱三色不变原则($T1$)为什么可以保证垃圾回收的准确性

> 在下面的证明中需要明确一个前提概念，那就是无论我们如何修改一个 `slot` 中包含的 `ptr` 指向哪里我们都需要能从内存中读取到这个 `ptr`。或者说我们指向的任何对象首先需要可达。

首先规定如下映射

- obj.slot ：一个堆对象`obj`所拥有的内存保存空间`slot`
- ptr : 指向新的对象指针，在这里指向 $W$
- oldptr : 指向旧对象的指针，也就是未将 `ptr` 赋值给 `obj.slot` 前 `obj.slot` 中保存在值

首先让 $W$ 成为一个一次写入 `slot`操作后被黑色堆对象 $B$ 指向的白色对象，在这种操作下不破坏原有的 $W$ 灰色保护状态，这有两种情况

1. 情况 1：$B \ne obj$ 此时 $W$ 一直被 $B$ 指向，假设在写入 `slot` 前存在序列 $G \rightarrow W_1 \rightarrow \cdots \rightarrow W$ 将 $W$ 灰色保护起来，那么在写入后如果此序列中不包含 `obj.slot` 那么 $W$ 的灰色保护在写入后依然不会被破坏，反之包含 `obj.slot` 说明在写入前存在一条这样的序列 $G \rightarrow W_1 \rightarrow \cdots \rightarrow^{obj.slot} O_{oldptr} \rightarrow \cdots \rightarrow W$ 由于删除写屏障会将$O_{oldptr}$置为灰色对象 $O_{oldptr} \iff G_{oldptr}$，此时必定存在序列 $G_{oldptr} \rightarrow \cdots \rightarrow W$ 使得 $W$ 被灰色保护。

2. 情况 2： $B \equal obj$ 此时 $W$ 在写入后才被黑色对象指向，
