(*here we are talking module *)

signature MATHLIB =
sig
  val fact : int -> int 
  val half_pi : int 
end




structure MyMath :> MATHLIB =
struct

fun fact x =  if x = 0 then 1 else x * fact (x-1);

fun half_pi = Math.pi /2.0;
fun doubler y = y + y;


end