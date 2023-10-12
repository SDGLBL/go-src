package main

import "fmt"

type noneEmptyI interface {
	Method(string)
}

type emptyI interface{}

type pointerImpl struct {
	X string `json:"x,omitempty"`
	Y int    `json:"y,omitempty"`
}

func (im *pointerImpl) Method(s string) {
	im.X = s
	fmt.Printf("NoneEmpty.Method Args: %s | NoneEmpty.X: %s | NoneEmpty.Y: %d \n", s, im.X, im.Y)
}

type valueImpl struct {
	X string `json:"x,omitempty"`
	Y int    `json:"y,omitempty"`
}

func (im valueImpl) Method(s string) {
	im.X = s
	fmt.Printf("NoneEmpty.Method Args: %s | NoneEmpty.X: %s | NoneEmpty.Y: %d \n", s, im.X, im.Y)
}

func main() {
	var pointerImplIns noneEmptyI = &pointerImpl{Y: 1}

	var valueImplIns noneEmptyI = valueImpl{Y: 2}

	pointerImplIns.Method("pointerImplIns")
	valueImplIns.Method("valueImplIns")

	var emptyImplIns emptyI
	_ = emptyImplIns
}
