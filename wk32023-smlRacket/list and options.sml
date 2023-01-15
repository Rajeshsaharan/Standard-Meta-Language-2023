(* case/expression are only used to check which constructor made this type ! etc *)


(*lets explore list more *)

datatype int_my_list = Empty | Cons of int * int_my_list ;

val x = cons (2, Empty); (*type is int_my_list*)

(*now we will write function using case expression *)

fun append_my_list (x:int_my_list, y:int_my_list) =
    case x of 
        Empty=> y
        | Cons (i1, i2) => Cons (i1 , append_my_list (i2, y))




(*another example of list*)

(**we can use case expression on build list using another function*)


(*int list -> int *)
fun sum_list (x: int list) = 
    case x of 
        [] => 0
        | i1::i2 => i1 + sum_list i2;


(*'a list * 'a list -> 'a list *)
fun append_list_2 (x: 'a list, y: 'a list) = 
        case x of 
        [] => y
        | i1::i2 => i1:: sum_list(i2 , y);


