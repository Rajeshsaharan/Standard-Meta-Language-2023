(* raise exception or using option*)

(* option are one of case data type )

_> here we are defining a function that take a list and return maximum number from  it
_> for more comparison se ../racket/local efficency /basic.rkt


*)


(*here we are using let for local binding to store recursive function and *)


fun good_max (xs : int list) = 
        if null xs 
        then 0
        else if null (tl xs)
        then hd xs
        else 
            let val tl_ans = good_max(tl xs) 
            in 
                if hd xs > tl_ans
                then hd xs
                else tl_ans 


(*here we are using options *)
(* here we return 0 when empty list on good_max *)