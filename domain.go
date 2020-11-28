package main

import (
	//"fmt"
	"strconv"
    "github.com/llir/llvm/ir"
)

/////////////////////
// Interval Domain //
/////////////////////
type Interval interface {
    String() string
	getLower() string
	getUpper() string
}

type Top struct {}
type Bot struct {}
type Middle struct {
	l string
	u string
}

func (b Top) String() string { return "[-inf,inf]"}
func (b Top) getLower() string { return "-inf" }
func (b Top) getUpper() string { return "inf"}
func (b Bot) String() string { return "Bot"}
func (b Bot) getLower() string {return "Bot"}
func (b Bot) getUpper() string {return "Bot"}
func (b Middle) String() string {
	return "["+b.l+","+b.u+"]"
}

func (b Middle) getLower() string {
	return b.l
}

func (b Middle) getUpper() string {
	return b.u
}

//구현시작
func InterTop() Interval {
    return Top{}
}
func InterBot() Interval {
    return Bot{}
}

func IntervalFromInt(l int) Interval {
	var s1 string
	s1 = strconv.Itoa(l)
	return Middle{s1,s1}
}

func IntervalFromCmp(l int) Interval {
	var s1 string
	s1 = strconv.Itoa(l)
	//fmt.Print("%s\n", s1)
	if(s1=="Bot") {
		return Bot{}
	}
	return Middle{"-inf",s1}
}
// Add 구현
func IntervalAdd(i1, i2 Interval) Interval {
	switch i1.(type) {
	case Bot: return Bot{}
	case Top: return Top{}
	case Middle:
		switch i2.(type){
		case Bot: return Bot{}
		case Top: return Top{}
		case Middle:
			var l1_s,u1_s,l2_s,u2_s string
			l1_s = i1.getLower()
			u1_s = i1.getUpper()
			l2_s = i2.getLower()
			u2_s = i2.getUpper()
			if(l1_s =="-inf" || l2_s =="-inf") {
				if(u1_s =="inf" || u2_s =="inf") {
					return Top{}
				} else {
					var err error
					var u1,u2 int
					u1 , err = strconv.Atoi(u1_s)
					u2 , err = strconv.Atoi(u2_s)
					if(err != nil) {
						panic("error")
					}
					var s string
					s = strconv.Itoa(u1+u2)
					return Middle{"-inf",s}
				}
			} else {
				if(u1_s == "inf" || u2_s =="inf"){
					var err error
					var l1,l2 int
					l1, err = strconv.Atoi(l1_s)
					l2, err = strconv.Atoi(l2_s)
					if(err != nil) {
						panic("error")
					}
					return Middle{strconv.Itoa(l1+l2),"inf"}
				} else {
					var err error
					var l1,l2,u1,u2 int
					l1, err = strconv.Atoi(l1_s)
					l2, err = strconv.Atoi(l2_s)
					u1, err = strconv.Atoi(u1_s)
					u2, err = strconv.Atoi(u2_s)
					if( err != nil){
						panic("error")
					}
					return Middle{strconv.Itoa(l1+l2),strconv.Itoa(u1+u2)}
				}
			}
			panic("Unreachable")
		}
	}
	panic("Unreachable")
}

//Sub 구현
func IntervalSub(i1, i2 Interval) Interval {
	switch i1.(type) {
	case Bot: return Bot{}
	case Top: return Top{}
	case Middle:
		switch i2.(type){
		case Bot: return Bot{}
		case Top: return Top{}
		case Middle:
			var l1_s,u1_s,l2_s,u2_s string
			l1_s = i1.getLower()
			u1_s = i1.getUpper()
			l2_s = i2.getLower()
			u2_s = i2.getUpper()
			if(l1_s =="-inf" || u2_s =="inf") {
				if(l2_s =="-inf" || u1_s =="inf") {
					return Top{}
				} else {
					var err error
					var u1,l2 int
					u1 , err = strconv.Atoi(u1_s)
					l2 , err = strconv.Atoi(l2_s)
					if(err != nil) {
						panic("error")
					}
					var s string
					s = strconv.Itoa(u1-l2)
					return Middle{"-inf",s}
				}
			} else {
				if(u1_s == "inf" || l2_s =="-inf"){
					var err error
					var l1,u2 int
					l1, err = strconv.Atoi(l1_s)
					u2, err = strconv.Atoi(u2_s)
					if(err != nil) {
						panic("error")
					}
					return Middle{strconv.Itoa(l1-u2),"inf"}
				} else {
					var err error
					var l1,l2,u1,u2 int
					l1, err = strconv.Atoi(l1_s)
					l2, err = strconv.Atoi(l2_s)
					u1, err = strconv.Atoi(u1_s)
					u2, err = strconv.Atoi(u2_s)
					if( err != nil){
						panic("error")
					}
					return Middle{strconv.Itoa(l1-u2),strconv.Itoa(u1-l2)}
				}
			}
			panic("Unreachable")
		}
	}
	panic("Unreachable")
}


// Mul 구현
func IntervalMul(i1, i2 Interval) Interval {
	switch i1.(type) {
	case Bot: return Bot{}
	case Top: return Top{}
	case Middle:
		switch i2.(type){
		case Bot: return Bot{}
		case Top: return Top{}
		case Middle:
			var l1_s,u1_s,l2_s,u2_s string
			l1_s = i1.getLower()
			u1_s = i1.getUpper()
			l2_s = i2.getLower()
			u2_s = i2.getUpper()
			if(l1_s =="-inf" || l2_s =="-inf") {
				if(u1_s =="inf" || u2_s =="inf") {
					return Top{}
				} else {
					var err error
					var u1,u2 int
					u1 , err = strconv.Atoi(u1_s)
					u2 , err = strconv.Atoi(u2_s)
					if(err != nil) {
						panic("error")
					}
					var s string
					s = strconv.Itoa(u1*u2)
					return Middle{"-inf",s}
				}
			} else {
				if(u1_s == "inf" || u2_s =="inf"){
					var err error
					var l1,l2 int
					l1, err = strconv.Atoi(l1_s)
					l2, err = strconv.Atoi(l2_s)
					if(err != nil) {
						panic("error")
					}
					return Middle{strconv.Itoa(l1*l2),"inf"}
				} else {
					var err error
					var l1,l2,u1,u2 int
					l1, err = strconv.Atoi(l1_s)
					l2, err = strconv.Atoi(l2_s)
					u1, err = strconv.Atoi(u1_s)
					u2, err = strconv.Atoi(u2_s)
					if( err != nil){
						panic("error")
					}
					return Middle{strconv.Itoa(l1*l2),strconv.Itoa(u1*u2)}
				}
			}
			panic("Unreachable")
		}
	}
	panic("Unreachable")
}

func IntervalSLT(i1, i2 Interval) Interval {
	//fmt.Printf("SLE process\n")
	switch i1.(type) {
	case Bot: return Bot{}
	case Top: return i2
	default:
		switch i2.(type) {
		case Bot: return Bot{}
		case Top: return i1
		default:
			var l1_s,l2_s,u1_s,u2_s string
			l1_s = i1.getLower()
			l2_s = i2.getLower()
			u1_s = i1.getUpper()
			u2_s = i2.getUpper()
			//fmt.Printf("%s %s %s %s\n", l1_s,u1_s,l2_s,u2_s)
			if(l2_s =="-inf"){
				//fmt.Printf("Okay\n")
				if(u1_s == "inf" && u2_s =="inf"){
					return Middle{l1_s,"inf"}
				} else if(u1_s =="inf"){
					var u2 int
					var err error
					u2, err = strconv.Atoi(u2_s)
					if err != nil {
						panic("error")
					}
					return Middle{l1_s, strconv.Itoa(u2)}
				} else if(u2_s =="inf"){
					return Middle{l1_s,u1_s}
				} else if(u1_s != "inf"&& u2_s != "inf"){
					var u1,u2 int
					var err error
					u1, err = strconv.Atoi(u1_s)
					u2, err = strconv.Atoi(u2_s)
					//fmt.Printf("%s %s\n",l2_s,u2_s)
					if err != nil {
						panic("error")
					}
					if u1 < u2 {
						//fmt.Printf("%s\n",us_1)
						return Middle{l1_s,strconv.Itoa(u1)}
					} else {
						return Middle{l1_s,strconv.Itoa(u2)}
					}
				}
			} else {
				if(l1_s =="-inf") {
					if(u1_s == "inf" && u2_s =="inf"){
						return Middle{l2_s,"inf"}
					} else if(u1_s =="inf"){
						var u2 int
						var err error
						u2, err = strconv.Atoi(u2_s)
						if err != nil {
							panic("error")
						}
						return Middle{l2_s, strconv.Itoa(u2)}
					} else if(u2_s =="inf"){
						return Middle{l2_s,u1_s}
					} else {
						var u1,u2 int
						var err error
						u1, err = strconv.Atoi(u1_s)
						u2, err = strconv.Atoi(u2_s)
						u2 = u2
						if err != nil {
							panic("error")
						}
						if u1 < u2 {
							return Middle{l2_s,strconv.Itoa(u1)}
						} else {
							return Middle{l2_s,strconv.Itoa(u2)}
						}
					}
				} else {
					var l1,l2 int
					var err error
					l1, err = strconv.Atoi(l1_s)
					l2, err = strconv.Atoi(l2_s)
					if err != nil {
						panic("error")
					}
					if l1 > l2 {
						if(u1_s == "inf" && u2_s =="inf"){
							return Middle{l1_s,"inf"}
						} else if(u1_s =="inf"){
							var u2 int
							var err error
							u2, err = strconv.Atoi(u2_s)
							if err != nil {
								panic("error")
							}
							return Middle{l1_s, strconv.Itoa(u2)}
						} else if(u2_s =="inf"){
							return Middle{l1_s,u1_s}
						} else {
							var u1,u2 int
							var err error
							u1, err = strconv.Atoi(u1_s)
							u2, err = strconv.Atoi(u2_s)
							u2 = u2
							if err != nil {
								panic("error")
							}
							if u1 < u2 {
								return Middle{l1_s,strconv.Itoa(u1)}
							} else {
								return Middle{l1_s,strconv.Itoa(u2)}
							}
						}
					} else {
						if(u1_s == "inf" && u2_s =="inf"){
							return Middle{l2_s,"inf"}
						} else if(u1_s =="inf"){
							var u2 int
							var err error
							u2, err = strconv.Atoi(u2_s)
							if err != nil {
								panic("error")
							}
							return Middle{l2_s, strconv.Itoa(u2)}
						} else if(u2_s =="inf"){
							return Middle{l2_s,u1_s}
						} else {
							var u1,u2 int
							var err error
							u1, err = strconv.Atoi(u1_s)
							u2, err = strconv.Atoi(u2_s)
							u2 = u2
							if err != nil {
								panic("error")
							}
							if u1 < u2 {
								return Middle{l2_s,strconv.Itoa(u1)}
							} else {
								return Middle{l2_s,strconv.Itoa(u2)}
							}
						}
					}
				}
			}
		}
	}
	panic("Unreachable")
}

//Order 구현
func InterOrder(i1, i2 Interval) bool {	
	if(i1 == Bot{} || i2 == Top{}) {
		return true
	} else {
		if (i1 == Top{} || i2==Bot{}) {
			return false
		} else if(i1 == Middle{} && i2 == Middle{}) {
			var l1_s,u1_s,l2_s,u2_s string
			l1_s = i1.getLower()
			u1_s = i1.getUpper()
			l2_s = i2.getLower()
			u2_s = i2.getUpper()
			if(l1_s =="-inf") {
				if(l2_s == "-inf"){
					var u1,u2 int
					var err error
					u1,err = strconv.Atoi(u1_s)
					u2,err = strconv.Atoi(u2_s)
					if(err!=nil) {
						panic("error")
					}
					if(u1<=u2) {
						return true
					} else {
						return false
					}
				} else{
					return false
				}
			} else {
				if(u1_s=="inf") {
					if(u2_s=="inf") {
						var l1,l2 int
						var err error
						l1,err = strconv.Atoi(l1_s)
						l2,err = strconv.Atoi(l2_s)
						if err!=nil {
							panic("error")
						}
						if l1>=l2 {
							return true
						} else {
							return false
						}
					} else {
						return false
					}
				} else {
					if(u2_s =="inf"){
						var l1,l2 int
						var err error
						l1, err = strconv.Atoi(l1_s)
						l2, err = strconv.Atoi(l2_s)
						if err != nil {
							panic("error")
						}
						if l1>=l2 {
							return true
						} else {
							 return false
						}
					} else {
						var l1,l2,u1,u2 int
						var err error
						l1, err = strconv.Atoi(l1_s)
						l2, err = strconv.Atoi(l2_s)
						u1, err = strconv.Atoi(u1_s)
						u2, err = strconv.Atoi(u2_s)
						if err!=nil {
							panic("error")
						}
						if( l1>=l2 && u1<=u2) {
							return true
						} else {
							return false
						}
					}
				}
			}
		}
		return false
	}
	panic("Not implemented Order")
}

//Join 구현
func InterJoin (i1, i2 Interval) Interval {
	if(i1 == Bot{} || i2 ==Top{}){
		return i2
	} else if(i2 == Bot{} || i1 == Top{}) {
		return i1
	} else {
		var l1_s,l2_s,u1_s,u2_s string
		l1_s = i1.getLower()
		l2_s = i2.getLower()
		u1_s = i1.getUpper()
		u2_s = i2.getUpper()
		if((l1_s=="-inf" || l2_s =="-inf")&&(u1_s =="inf" || u2_s=="inf")) {
			return Top{}
		} else {
			if(l1_s == "-inf" || l2_s =="-inf") {
				var err error
				var u1,u2 int
				u1,err = strconv.Atoi(u1_s)
				u2,err = strconv.Atoi(u2_s)
				if err != nil {
					panic("error")
				}
				if u1>=u2 {
					return Middle{"-inf",u1_s}
				} else {
					return Middle{"-inf",u2_s}
				}
			} else if(u1_s == "inf" || u2_s == "inf") {
				var err error
				var l1,l2 int
				l1,err = strconv.Atoi(l1_s)
				l2,err = strconv.Atoi(l2_s)
				if err != nil {
					panic("error")
				}
				if l1>= l2 {
					return Middle{l2_s,"inf"}
				} else {
					return Middle{l1_s,"inf"}
				}
			} else {
				var err error
				var l1,l2,u1,u2 int
				l1, err = strconv.Atoi(l1_s)
				l2, err = strconv.Atoi(l2_s)
				u1, err = strconv.Atoi(u1_s)
				u2, err = strconv.Atoi(u2_s)
				if err != nil {
					panic("error")
				}
				if l1>=l2 {
					if u1 >= u2 {
						return Middle{l2_s,u1_s}
					} else {
						return Middle{l2_s,u2_s}
					}
				} else {
					if u1 >= u2 {
						return Middle{l1_s,u1_s}
					} else {
						return Middle{l1_s,u2_s}
					}
				}
			}
		}
	}
	panic("Unreachable")
}

func InterWiden(i1, i2 Interval) Interval {
	switch i1.(type){
	case Bot: return i2
	case Top: return Top{} 
	default:
		switch i2.(type){
		case Bot: return i1
		case Top: return Top{}
		default:
			var l1_s,l2_s,u1_s,u2_s string
			l1_s = i1.getLower()
			l2_s = i2.getLower()
			u1_s = i1.getUpper()
			u2_s = i2.getUpper()
			
			if(l1_s =="-inf"){
				if(u2_s =="inf"){
					return Top{}
				} else {
					var err error
					var u1,u2 int
					u1, err = strconv.Atoi(u1_s)
					u2, err = strconv.Atoi(u2_s)
					if err != nil {
						panic("error")
					}
					if u1 < u2 {
						return Top{}
					} else {
						return Middle{"-inf",u1_s}
					}
				}
			} else {
				if(u1_s =="inf"){
					if(l2_s=="-inf"){
						return Top{}
					} else {
						var err error
						var l1,l2 int
						l1,err = strconv.Atoi(l1_s)
						l2,err = strconv.Atoi(l2_s)
						if err != nil {
							panic("error")
						}
						if(l2<l1){
							return Top{}
						} else {
							return Middle{l1_s,"inf"}
						}
					}
				} else {
					if(l2_s =="-inf"){
						var u1,u2 int
						var err error
						u1, err = strconv.Atoi(u1_s)
						u2, err = strconv.Atoi(u2_s)
						if err != nil {
							panic("error")
						}
						if(u2>u1){
							return Top{}
						} else {
							return Middle{"-inf",u1_s}
						}
					} else if(u2_s == "inf"){
						var l1,l2 int
						var err error
						l1, err = strconv.Atoi(l1_s)
						l2, err = strconv.Atoi(l2_s)
						if err != nil {
							panic("error")
						}
						if(l2<l1){
							return Top{}
						} else {
							return Middle{l1_s,"inf"}
						}
					} else {
						var l1,l2,u1,u2 int
						var err error
						l1, err = strconv.Atoi(l1_s)
						l2, err = strconv.Atoi(l2_s)
						u1, err = strconv.Atoi(u1_s)
						u2, err = strconv.Atoi(u2_s)
						if err != nil {
							panic("error")
						}
						if(l2<l1){
							if(u1<u2) { 
								return Top{}
							} else {
								return Middle{"-inf",u1_s}
							}
						} else {
							if(u1<u2) {
								return Middle{l1_s,"inf"}
							} else {
								return Middle{l1_s,u1_s}
							}
						}
					}
				}
			}
		}

	}

    panic("Unreachable")
}
//구현 끝

type State map[string]Interval

func EmptyState() State {
    return make(map[string]Interval)
}

func (s *State) Bind(x string, v Interval) {
    (*s)[x] = v
}

func (s *State) Find(x string) Interval {
    v, ok := (*s)[x]
    if !ok {
        return InterBot()
    }
    return v
}

func StateOrder(s1, s2 State) bool {
    for k, v1 := range s1 {
        v2, ok := s2[k]
        if !ok {
            v2 = InterBot()
        }
        if !InterOrder(v1, v2) {
            return false
        }
    }
    return true
}

func StateJoin(s1, s2 State) State {
    s3 := make(State)
    for k, v := range s2 {
        s3[k] = v
    }
    for k, v1 := range s1 {
        v2, ok := s3[k]
        if !ok {
            v2 = InterBot()
        }
        s3[k] = InterJoin(v1, v2)
    }
    return s3
}

func StateWiden(s1, s2 State) State {
    s3 := make(State)
    for k, v := range s2 {
        s3[k] = v
    }
    for k, v1 := range s1 {
        v2, ok := s3[k]
        if !ok {
            v2 = InterBot()
        }
        s3[k] = InterWiden(v1, v2)
    }
    return s3
}

func (s State) String() string {
    if len(s) == 0 {
        return "{ }"
    }
    var res string
    for k, v := range s {
        res = res + "\t" + k + " |-> " + v.String() + "\n"
    }
    return res
}

type Node *ir.Block
type Table map[Node]State

func (t *Table) Bind (n Node, s State) { (*t)[n] = s }
func (t *Table) Find (n Node) State {
    s, ok := (*t)[n]
    if !ok {
        t.Bind(n, EmptyState())
        return (*t)[n]
    }
    return s
}

func (t *Table) String() string {
    var res string
    for n, s := range *t {
        res += "   " + n.LocalIdent.Ident() + "\n"
        res += s.String() + "\n"
    }
    return res
}

func NewTable() Table {
    return make(Table)
}
