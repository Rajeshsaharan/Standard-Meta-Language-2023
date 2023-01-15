(*multi argument function also can be defined as curried function *)

(*in normal way provide all argumnents in tuple and process with it but we can do it
by multi argument curried function 
*)


fun add_all (x, y,z) = x+ y+ z;

add_all(1,2,3) (*output -> 6*)

(*we can define it in multi argument ways*)

fun add_all_v2 x = fn y => fn z => x + y+ z;

(*so here 
value : x is value in clousre
and return a function(anon function that take y argument that return further)

*)

add_all_v2 1 2 3; (*output will be 6 *)



(*map curruied function *)

fun map f = fn x =>
    case x of 
        [] => []
        | xs::xs' => f xs :: map f xs';


fun add_1 x = x + 1;


map add [1,2,3] ;(* output will be [2,3,4]*)


(*but we can define curried function another way *)


add_all_v3 x y z = x+ y+ z; (*also a curried function*)


fun map_v2 f x = 
    case x of 
    [] => []
    | xs::xs' => f xs :: map f xs' ;


fun add x= x+1;


map_v2 add [1,2,3]; (*output -> [2,3,4] *)

