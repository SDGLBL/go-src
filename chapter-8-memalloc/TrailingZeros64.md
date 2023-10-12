# TrailingZeros64 获取给定 `uint64` 中从低位到高位存在几个 0

## TrailingZeros64

其原理主要依赖于一种叫做 `de Bruijn` 特殊序列，其特点便是其 bit 表达形式在特定大小 k 的滑动窗口下从高位以步长为 1 滑动到低位时每一步所圈定的 k 个 bit 内容是唯一的，在数学上与图论中的欧拉问题以及汉密顿问题有着密切关系，在 `runtime` 中主要用于计算给定 `uint64` 标识的哪个 bit 所对应的内存可以被分配。

## 算法原理

`
const deBruijn64 = 0x03f79d71b4ca8b09

var deBruijn64tab = [64]byte{
0, 1, 56, 2, 57, 49, 28, 3, 61, 58, 42, 50, 38, 29, 17, 4,
62, 47, 59, 36, 45, 43, 51, 22, 53, 39, 33, 30, 24, 18, 12, 5,
63, 55, 48, 27, 60, 41, 37, 16, 46, 35, 44, 21, 52, 32, 23, 11,
54, 26, 40, 15, 34, 20, 31, 10, 25, 14, 19, 9, 13, 8, 7, 6,
}

func TrailingZeros64(x uint64) int {
if x == 0 {
return 64
}
return int(deBruijn64tab[(x&-x)*deBruijn64>>(64-6)])
}

// 每个元素 8bit 低位 0 bit 默认不展示, 阅读顺序从左至右分别对应实际内存中从低位到高位 8 bit 表示
// deBruijn64 bit: [1001 10001011 11001010 10110100 1110001 10011101 11110111 11]
`