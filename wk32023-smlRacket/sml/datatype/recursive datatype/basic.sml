(*datatype also can be recursive and polymorphic *)

datatype exp = Constant of int | Add of exp * exp | Negate of exp | Add of exp * exp | Mutltiply of exp * exp


fun eval(x :exp) = 
    case x of 
         Constant i => i
        |Negate i => ~ (eval i)
        |Add (i1 , i2)=> eval i1 + eval i2
        |Mutltiply(i1, i2)=> eval i1 * eval i2 ;



