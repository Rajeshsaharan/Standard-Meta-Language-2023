(*val and function also works with pattren metch*)

fun sum_pair (p) = 
    case p of 
    (i1 , i2, i3 )=> i1 + i2 + i3;

(*function-pattren metching*) 

sum_pair (1,2,3) (*here when we are calling we are matching pattren and there are only one pattren *)

(*val pattern matching*)

val (x, y, z) = (1, 2, 3)  (*now we extract data from constructor function*)



(*another way to define function whenever there each of data type *)

fun sum_pair_v2 p =
    let val (x,y,z) = p
    in 
    x + y +z
    end 


sum_pair_v2 (1,2,3);

(*another way for define function *)

fun sum_pair_v3 (x,y,z) = x + y + z

(*actually every function take one argument not 2 or 3 IMPORTANT *)

(*for more define val-pattren-matching lets do this example*)

datatype mytype = Twoint of int * int | 3 ; (*one of type *)

val Twoint (a , b) = Twoint (1 ,2) (*now we have a and b is value extracted from data*)
