package main

import "fmt"

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
	// If popcount is fast, replace code below with return popcount(^x & (x - 1)).
	//
	// x & -x leaves only the right-most bit set in the word. Let k be the
	// index of that bit. Since only a single bit is set, the value is two
	// to the power of k. Multiplying by a power of two is equivalent to
	// left shifting, in this case by k bits. The de Bruijn (64 bit) constant
	// is such that all six bit, consecutive substrings are distinct.
	// Therefore, if we have a left shifted version of this constant we can
	// find by how many bits it was shifted by looking at which six bit
	// substring ended up at the top of the word.
	// (Knuth, volume 4, section 7.3.1)
	return int(deBruijn64tab[(x&-x)*deBruijn64>>(64-6)])
}

// findBitRange64 returns the bit index of the first set of
// n consecutive 1 bits. If no consecutive set of 1 bits of
// size n may be found in c, then it returns an integer >= 64.
// n must be > 0.
func findBitRange64(c uint64, n uint) uint {
	// This implementation is based on shrinking the length of
	// runs of contiguous 1 bits. We remove the top n-1 1 bits
	// from each run of 1s, then look for the first remaining 1 bit.
	p := n - 1 // number of 1s we want to remove.
	bPrint("p", p)
	k := uint(1) // current minimum width of runs of 0 in c.
	bPrint("k", k)
	bPrint("63", 63)
	// 我们要找到长度为 n 的必须先至少 >> 2^x -1 次 c，且需要保证x次位移长度加起来小于 n-1,随后 >> 剩下的 n - 2^x 次，此时bit数组中
	// 低位到高位第一个非0bit的长度则为可以分配的位置，之所以先以2次方等比方式累加位移是尽可能减少迭代次数的情况下逼近 n - 1
	// 因此算法原理如下
	// step1 2^x - 1 <= n - 1 find max x
	// step2 c &= (c >> (2^x -1))
	// step3 c &= (c >> (n - 2^x))
	// step3 return TrailingZeros64(c)
	i := 1
	for p > 0 {
		fmt.Printf("iteration %d\n", i)
		i += 1
		if p <= k {
			// Shift p 0s down into the top of each run of 1s.
			bPrint("p & 63", p&63)
			bPrint("c >> (p & 63)", c>>(p&63))
			c &= c >> (p & 63)
			bPrint("c", c)
			break
		}
		// Shift k 0s down into the top of each run of 1s.
		bPrint("k & 63", k&63)
		bPrint("c >> (k & 63)", c>>(k&63))
		c &= c >> (k & 63)
		bPrint("c", c)
		if c == 0 {
			return 64
		}
		p -= k
		bPrint("p -= k", p)
		// We've just doubled the minimum length of 0-runs.
		// This allows us to shift farther in the next iteration.
		k *= 2
		bPrint("k *= 2", k)
	}
	// Find first remaining 1.
	// Since we shrunk from the top down, the first 1 is in
	// its correct original position.
	return uint(TrailingZeros64(c))
}

func bPrint(valName string, d ...any) {
	fmt.Printf("%s: %b \n", valName, d)
}

func main() {
	// a uint which bits are 11111000
	cache := uint64(0x1ffff8)
	bPrint("cache", cache)
	fmt.Println(findBitRange64(cache, 15))
}
