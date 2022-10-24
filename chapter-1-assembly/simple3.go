package main

type simple3[T any] struct {
	a T
	b T
	c T
}

//go:noinline
func (s simple3[T]) set(a, b, c T) {
	s.a = a
	s.b = b
	s.c = c
}

//go:noinline
func (s *simple3[T]) setp(a, b, c T) {
	s.a = a
	s.b = b
	s.c = c
}

type MyInt int

func main() {
	s := simple3[int]{}
	s.set(1, 2, 3)
	s.setp(4, 5, 6)

	s2 := simple3[string]{}
	s2.set("a", "b", "c")
	s2.setp("d", "e", "f")

	s3 := simple3[MyInt]{}
	s3.set(1, 2, 3)
	s3.setp(4, 5, 6)
}
