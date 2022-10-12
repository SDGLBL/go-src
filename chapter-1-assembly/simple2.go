package main

type simple struct {
	p1 int
	p2 int
	p3 int
}

func (s simple) set(a int, b int, c int) {
	s.p1 = a
	s.p2 = b
	s.p3 = c
}

func (s *simple) setp(a int, b int, c int) {
	s.p1 = a
	s.p2 = b
	s.p3 = c
}

func main() {
	s := simple{}
	s.set(1, 2, 3)
	s.setp(4, 5, 6)
}
