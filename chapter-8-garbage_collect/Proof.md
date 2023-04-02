### Prove Hybrid Write Barrier / 混合写屏障

不同于直接证明混合写屏障不破坏弱三色不变原则，我们先证明混合写屏障不会破坏变动版弱三色不变原则也就是引理 1

B,G,W,H 分别代表黑色，灰色，白色，全部堆对象集合

X 代表全局对象，其不可能为白色

$$
B_i \in Black \\
G_i \in Green \\
W_i \in White \\
X \in Global \wedge X \notin White \\
H = \lbrace Black,Green,White \rbrace \\
{\forall}B{\rightarrow}W \enspace {\exists}G{\rightarrow}W_1{\rightarrow} \cdots {\rightarrow}W_{n}{\rightarrow}W \\
\tag{T1}
$$

引理 1--- 所有被黑色对象直接指向的白色对象都处于灰色保护下

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

1. 因为栈上对象只只能指向自己栈上对象或堆对象，又因为栈的颜色是原子改变的（要么全黑要么全灰）因此不会出现黑指向白，所以 $O_1$ 一定是堆对象。
2. 又因为 $T2$ 所以$O_2$ 到 $O_n$ 一定都为堆对象。
3. 如果 $O_i$ 不存在那么引理 3 退回到 $T1$。
4. 如果 $O_i$ 中存在黑色对象那么回到证明开始并以此黑色对象为起点开始证明$T3$
5. 如果 $O_i$ 中存在灰色对象那么 $W$ 一定被灰色保护。
6. 如果 $O_i$ 都为白色对象，那么因为$O_1$ 被黑色对象指向，因为 $T1$ 所以 $O_1$ 一定被某个灰色对象以 $G \rightarrow W_1 \rightarrow \cdots \rightarrow W_n \rightarrow O_1$ 的方式保护，那么 $W$ 一定以 $G \rightarrow W_1 \rightarrow \cdots \rightarrow W_n \rightarrow O_1 \rightarrow \cdots \rightarrow O_n \rightarrow W$ 这样的方式被灰色保护。

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

接下来证明为什么混合写屏障可以不破坏 $T1$，为此我们需要考虑多重情况下修改栈/堆以及扫描分配对象情况可能出现的灰色保护被破坏的可能性，并一一否定其可能性。

在所有情况前先做一个如下假设

$W$ 是一个下述各种操作中的一种操作执行完后被黑色对象 $B$ 指向的白色对象，并在操作执行前存在保护序列 $G \rightarrow W_1 \rightarrow \cdots \rightarrow W$ 将 $W$ 灰色保护起来，且 $G$ 是堆对象

> 这里需要理解操作前这个概念，操作是对整个图的修改，因此我们认为操作最开始前图是静止的，因此操作前所有对象关系都是明确的，在静止的图上执行三色垃圾回收算法是一定能保证所有应该被回收的对象被回收的，或者说所有应该被灰色保护的对象都是被保护的，所以我们可以做这个假设，逻辑的起点便是静态的图，我们需要做的就是证明在操作修改静态图的过程中混合写屏障可以一致保持 『所有应该被灰色对象保护的对象依然被保护』这个状态。

##### 考虑修改堆对象

- obj.slot ：一个堆对象`obj`所拥有的内存保存空间`slot`
- ptr : 指向新的对象指针
- oldptr : 指向旧对象的指针，也就是未将 `ptr` 赋值给 `obj.slot` 前 `obj.slot` 中保存在值

1. 情况 1： $B ≠ obj$ 此时 $W$ 一直被 $B$ 指向，那么在写入前如果保护序列中不包含 `obj.slot` 那么 $W$ 的灰色保护在写入后依然不会被破坏，反之包含 `obj.slot` 说明在写入前存在一条这样的序列 $G \rightarrow W_1 \rightarrow \cdots \xrightarrow{obj.slot} O_{oldptr} \rightarrow \cdots \rightarrow W$ 由于删除写屏障会将 $O_{oldptr}$ 置为灰色对象 $O_{oldptr} \iff G_{oldptr}$，此时必定存在序列 $G_{oldptr} \rightarrow \cdots \rightarrow W$ 使得 $W$ 被灰色保护。

2. 情况 2： $B = obj$ 此时 $W$ 在写入后才被黑色对象 $B$ 指向，此时存在两种情况。

   1. $W = ptr$：也就是 $ptr$ 本身就指向 $W$，此时赋值器所属的协程一定是黑色的，因为如果不为黑色其就会触发混合写屏障的 $shade(ptr)$ 操作将 $ptr$ 染成灰色。此时因为 $T4$ 所以 $W$ 依然会被灰色保护。
   2. $W \ne obj$：也就是在写入`obj.slot`前就已经 $\exists B \rightarrow W$，根据假设此时 $W$ 是在被灰色保护状态的。

因为 $B$ 是黑色的，所以其不可能位于假设的保护序列中（保护序列不存在黑色对象），因此两种情况也不会破坏假设的保护序列

##### 考虑修改栈对象

- stk.slot ：一个栈对象`obj`所拥有的内存保存空间`slot`
- ptr : 指向新的对象指针
- oldptr : 指向旧对象的指针，也就是未将 `ptr` 赋值给 `obj.slot` 前 `obj.slot` 中保存在值

1. 情况 1： $B = stk \wedge W = ptr$ 这种情况中在写入操作前可能 $W$ 并没有被任何黑色对象指向，但因为 $ptr$ 一定是通过一个栈获取的且这个栈一定是 $B$ 所属的 `stk`, 又因为 $B$ 是黑色的所以 `stk` 也是黑色的，根据 $T4$ $W$依然被灰色保护。

2. 情况 2：其他情况也就是 $B \ne stk$ 下 $W$ 一定在写入操作前就已经被 $B$ 指向，根据假设 $W$ 在写入操作前就被灰色保护了

又因为根据 $T2$ $G$ 为堆对象那么所有 $W_i$ 也为堆对象，所以栈写入操作不可能修改保护路径，因此假设 $W$ 在写入前的保护路径不会再写入后被修改依然生效。

##### 考虑扫描后的情况

- $obj_h$ ：已经被扫描过的堆对象

那么 $B$ 不可能是 $obj_h$，因为扫描过后 $obj_h$ 不可能指向任何白色对象 （指向的对象都在扫描过程中被染色了）。那么根据假设在扫描前就 $\exists \space B \rightarrow W$，且 $W$ 被堆对象 $G$ 灰色保护，即使保护序列中 $\exists \space obj_h \rightarrow W_i$ 那么扫描后 $W$ 也一定会被 $W_i$ 灰色保护。那么扫描不会破坏 $T1$。

- $obj_s$ ：已经被扫描过的栈对象

逻辑和堆对象一致不会破坏 $T1$

##### 考虑分配对象(堆分配/栈分配/栈创建)

因为屏障开启期间，分配器会开启黑色赋值器，新增对象都是黑色依然不会破坏 $T1$

###### 到这里结论就是已经证明混合写屏障可以保证 $T1$ 不会被破坏。
