(*function as argument *)
(*always asume a 3 list elemnent to assume compution write down compution always*)



infix $

fun x $ f = f x


fun myfun (f x:'a list) =
     case x of 
     [] => 0
     | xs :: xs' => f (xs , myfun(f ,xs')); (*compution f (x, f (y f(z, [])))  *)
     | xs :: xs' => (xs, myfun (f, xs')) $ f  (*compution f (x, f (y f(z, [])))  *)


fun add(x, y) = x + y;



(*function passing as args *)
myfun(add, [1,2,3,4])

myfun ((fn (x, y)=> x + y), [1,2,3,4,5]) (*or we can define function as anon function *)

