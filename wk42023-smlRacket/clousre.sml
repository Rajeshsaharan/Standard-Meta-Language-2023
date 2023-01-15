fun filter (f, x:'a list) =
    case x of 
        [] => []
        | xs::xs' => if (f x) then x::filter(xs') else filter(xs');



fun allshorterthan (xs:string list,s : string) =
        filter ((fn x=> String.size x < String.size s), xs)



(*here we defined a function return all list of string if the string is shorter than any string*)


fun allshorterthan2 (xs:string list, s:string) =
            let val i = String.size s
            in 
                filter ((fn x=> String.size x < i), xs)
            end


            