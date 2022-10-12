package main

//go:noinline
func simple(a int) bool {
	return a == 1
}

func main() {
	simple(1)
}
