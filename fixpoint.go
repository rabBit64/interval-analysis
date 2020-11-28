package main

import (
)

func InputOf(here Node, cfg Cfg, tbl Table) State {
    if cfg.IsEntry(here) {
        res := EmptyState()
        for _, p := range cfg.params {
            res.Bind(p.Ident(), InterTop())
        }
        return res
    } else {
        res := EmptyState()
        for _, p := range cfg.Pred(here) {
            res = StateJoin(res, tbl.Find(p))
        }
        return res
    }
    panic("Unreachable")
}

func NeedWiden(b Node) bool {
    return true
}

func Analyze(cfg Cfg) Table {
    var tbl Table
    var worklist Worklist
    tbl = NewTable()
    worklist = NewWorklist()
    worklist.AddSet(cfg.blocks)

    for !worklist.IsEmpty() {
        here := worklist.Choose()
        state := InputOf(here, cfg, tbl)
        state.TransferBlock(here.Insts)
        old_state := tbl.Find(here)
        if !StateOrder(state, old_state) {
            if NeedWiden(here) {
                tbl.Bind(here, StateWiden(old_state, state))
            } else {
                tbl.Bind(here, StateJoin(old_state, state))
            }
            worklist.AddSet(cfg.Succ(here))
        }
    }
    return tbl
}
