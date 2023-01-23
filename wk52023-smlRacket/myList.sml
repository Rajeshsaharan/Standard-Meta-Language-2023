structure Structure =
struct
  datatype 'a list = Empty | Cons of int * 'a list

  fun add_item_to_list (l:'a list, x: 'a )= Cons (x l)
  fun filter (f, l) =
  case l of 
    Empty => Empty
    | Cons (x, y) => if (f x) then Cons (x ,y) else filter (f, y)

  fun filter_by y l = filter (fn x=> x= y, l)


end