(*we know we can achieve tail recursion using accumulator *)


(*factorial of list n * n-1 *)



fun myfun (x:list )=
    case x of 
        [] => 1
        |xs ::xs' => xs * myfun(xs');


(*but this function can consume more computional power so we can use accumulator instead of it*)


fun myfun2 (x:list) =
    let fun helper_fun (x:int list, accumulator: int) =
            case x of 
                [] => accumulator
                | xs::xs' => helper_fun (xs' , accumulator * xs)
    in
        helper_fun (x, 1)

    end 


myfun2 [3,2,1]
myfun [3,2,1] (*myfun2 is much safer to  use*)





(*reverse the list function *)



fun reverse_list (x:'a list ) =
    case x of 
        [] => [] (*either can generate exeception*)
        | xs :: xs' => reverse ( xs' ) @ [x] (*a append to list (built in function*)
        ;


(*it also can do with helper/tail recursion*)

fun reverse_list_v2 (x: 'a list) =
    let fun helper (x: 'a list , accumulator :'a list) =
            case x of 
                [] => accumulator
                | xs ::xs' => helper(xs ' , accumulator @ [xs] )
    in
        helper (x , [])
    end ;


(*reverse_list_v2 is much better becuase it works on tail recursion *)



