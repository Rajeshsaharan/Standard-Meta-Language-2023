(*iterator like function *)

fun fold (f, acc, xs:'a list) =
(*recursion--> try to solve with helper/tail recursive 
then watch what is computing
*)
            case x of 
                [] => acc
                | xs::xs' => fold (f, f (acc, x), xs');  (*compution ->  fold (f , f(acc, x), xs')  *)



(*adding all of elements in list *)

fun add(x, y) = x + y;

fold (add, 0 , [1,2,3]);


(*another second fold function *)
fun is_all_list_item_are_postive (x, y) = x andalso y >= 0;

fold (is_all_list_item_are_postive, true, [1,2,~3]); (*return true if all items are non-negative*)



