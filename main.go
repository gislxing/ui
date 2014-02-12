// 11 february 2014
package main

func main() {
	w := NewWindow("Main Window", 320, 240)
	w.Closing = make(chan struct{})
	err := w.Open()
	if err != nil {
		panic(err)
	}
	<-w.Closing
	w.Close()
}

