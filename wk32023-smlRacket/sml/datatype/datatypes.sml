(* data types can be any type
each of 

3 most important Types building-blocks in any language

"each-of" -> a t value contains values of each of t1 t2 ... tn
"one of " -> a t values contains values of one of t1 t2 ... tn
"self refrence"-> a t value can refer to other t values


; tuples (constructor is (3 4 5) (fixed size list))
; record with key= value pair are example of each-of

; options data type contain an int or it contains no data

;; list contains [1]-> int list
                 [1 [1]] int list list
                 [] 'a list ('a can be replaced by any basic data types string , int and tuples and either a int list)         ;    it contains no data type :- alpha list can be replace by any list data type
;; list type also can be constructed by :: (cons operator)

;; we can compare , to star (*) whenever type check

)

(example datatype )


*)

*)


datatype mytype = TwoIns of int * int | str of string | pizza

(*twoInt and str both are function constrctor pizza is also a constructor*)

