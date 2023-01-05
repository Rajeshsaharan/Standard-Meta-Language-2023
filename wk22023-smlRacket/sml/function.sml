(* there is no this and retrun keyword like java or other oop \

function binding 
*)

fun myfunc(x : int , y : int) =
             if y = 0 then 1 else x * myfunc(x , y-1)

(* int * int ---> int *)

(* function can't defined later binding *)

myfunc (2 3) 


