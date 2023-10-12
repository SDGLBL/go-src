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
