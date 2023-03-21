package main

import (
	"fmt"
	"unsafe"
)

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

func main() {
	a := uint64(3000)
	fmt.Println("a: ", a)
	fmt.Printf("a: %b\n", *(*[8]byte)(unsafe.Pointer(&a)))

	b := -a
	fmt.Println("b: ", b)
	fmt.Printf("b: %b\n", *(*[8]byte)(unsafe.Pointer(&b)))

	c := a & b
	fmt.Println("c: ", c)
	fmt.Printf("c: %b\n", *(*[8]byte)(unsafe.Pointer(&c)))

	de := 0x03f79d71b4ca8b09
	fmt.Println("de: ", de)
	fmt.Printf("de: %b\n", *(*[8]byte)(unsafe.Pointer(&de)))
	fmt.Println("TrailingZeros64 res: ", TrailingZeros64(a))
}
