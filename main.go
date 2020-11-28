package main

import (
    "flag"
    "fmt"

	"github.com/llir/llvm/asm"
)

func main() {
    flag.Parse()
    args := flag.Args()
    filename := args[0]
	m, err := asm.ParseFile(filename)
	if err != nil {
		panic(err)
	}
    md := NewModule(m)
    for _, cfg := range md.cfgs {
        fmt.Printf("Analysis of %s begins...\n", cfg.GetFid())
        tbl := Analyze(cfg)
        fmt.Println()
        fmt.Println("Analysis Results for:", cfg.GetFid())
        fmt.Println(tbl.String())
        fmt.Println()
    }
}
