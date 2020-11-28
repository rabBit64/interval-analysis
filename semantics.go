package main

import (
	"fmt"
	"github.com/llir/llvm/ir"
	"github.com/llir/llvm/ir/value"
	"github.com/llir/llvm/ir/constant"
	"github.com/llir/llvm/ir/enum"
)

func evalArgument(v value.Value, s *State) Interval{
	switch v := v.(type) {
	case *constant.Int:
		i := int(v.X.Int64())
		return IntervalFromInt(i)
	default:
		loc := v.Ident()
		itv := s.Find(loc)
		return itv
	}
	panic("Unreachable")
}

func evalCmp(v value.Value, s *State) Interval{
	switch v := v.(type) {
	case *constant.Int:
		i := int(v.X.Int64())
		return IntervalFromCmp(i)
	default:
		loc := v.Ident()
		itv := s.Find(loc)
		if(itv.getUpper()=="Bot") {
			return Bot{}
		}
		return Middle{"-inf",itv.getUpper()}
	}
}

func (s *State) transferInstAdd(inst *ir.InstAdd){
	loc := inst.LocalIdent.Ident()
	vx := evalArgument(inst.X, s)
	vy := evalArgument(inst.Y, s)
	s.Bind(loc, IntervalAdd(vx,vy))
}

func (s *State) transferInstSub(inst *ir.InstSub){
	loc := inst.LocalIdent.Ident()
	vx := evalArgument(inst.X, s)
	vy := evalArgument(inst.Y, s)
	s.Bind(loc, IntervalSub(vx,vy))
}

func (s *State) transferInstMul(inst *ir.InstMul){
	loc := inst.LocalIdent.Ident()
	vx := evalArgument(inst.X, s)
	vy := evalArgument(inst.Y, s)
	s.Bind(loc, IntervalMul(vx,vy))
}

func (s *State) transferInstICmp(inst *ir.InstICmp){
	loc := inst.LocalIdent.Ident()
	vx := evalArgument(inst.X,s)
	vy := evalCmp(inst.Y,s)
	itv := InterTop()
	switch inst.Pred{
	case enum.IPredSLT:
		itv = IntervalSLT(vx,vy)
	}
	s.Bind(loc,itv)
	//fmt.Printf("%s\n",itv)
}

func (s *State) transferInstPhi(inst *ir.InstPhi){
	loc := inst.LocalIdent.Ident()
	itv := InterBot()
	//F := InterBot()
	for _, inc := range inst.Incs {
		//itv = InterJoin(itv,evalArgument(inc.X,s))
		if(!InterOrder(itv,evalArgument(inc.X,s))) {
			itv = InterWiden(itv, evalArgument(inc.X,s))
			continue
		}
		//itv = InterJoin(itv,evalArgument(inc.X,s))
	}
	s.Bind(loc,itv)
}

func (s *State) transferInstCall(inst *ir.InstCall){
}

func (s *State) transferInst(inst ir.Instruction) {
    // TODO
	switch inst:= inst.(type){
	case *ir.InstAdd: s.transferInstAdd(inst)
	case *ir.InstSub: s.transferInstSub(inst)
	case *ir.InstMul: s.transferInstMul(inst)
	case *ir.InstICmp: s.transferInstICmp(inst)
	case *ir.InstPhi: s.transferInstPhi(inst)
	case *ir.InstCall: s.transferInstCall(inst)
	default: fmt.Printf("Unsupported instruction: %T\n", inst)
	}
}

func (s *State) TransferBlock(insts []ir.Instruction) {
    for _, inst := range insts {
        s.transferInst(inst)
    }
}
