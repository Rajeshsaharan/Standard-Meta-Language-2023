signature MYLIST =
 sig
     type 'a list
	val create : 'a list
    val add_item_to_list : 'a * 'a list -> 'a list
    val filter_by : ''a * ''a list -> ''a list
  end

     
structure Mylist:> MYLIST  =
struct
datatype 'a list = Empty | Cons of 'a * 'a list ;

val create = Empty


fun add_item_to_list (x: 'a, l: 'a list) =
    Cons (x , l)
;
  fun filter (f, l) =
      case l of
	  Empty => Empty
	| Cons (x, y) => if (f x) then Cons (x, y) else filter(f, y);
fun filter_by (y, l) = filter (fn x => x = y ,l);			    
end
