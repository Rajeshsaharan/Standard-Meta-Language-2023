fun map (f, x: 'a list) = 
    case x of 
        [] => []
        | xs::xs' => (f xs):: map(f xs'); (*compution    (f x) :: (f y) :: (f z) :: []   *)



fun add1 (x) = 1 + x;


map(add1 , [1,2,3,4,5]) (*output will be [2,3,4,5,6]*)


fun filter (f, x:'a list) =
    case x of 
        [] => []
        | xs::xs' => if (f x) then x::filter(xs') else filter(xs');


fun is_true = x = 2;

filter (is_true , [1,2,3,4,5]);


