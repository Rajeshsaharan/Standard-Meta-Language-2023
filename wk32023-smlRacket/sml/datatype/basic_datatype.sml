(* basic datatype with sml*)


datatype mytype = twoInt of int * int | str of string | pizza
(*now it create new type data with 3 constructor*)


val a:mytype = twoInt(2, 3)

val b:mytype = str "hello"

val c: mytype = pizza
 
val d:string->mytype = str

val e:int*int->mytype = twoInt


(* every constructor have like function first tag and correspending data 


in above example :-> twoint is tag and correspending data is (int * int)



*)

fun myfun(a:int, b:int) = a * b

(*myfun is also a tag and have correspending data*)


(* here is myfun is int * int-> int 




 *)