val z = -2;
val abs_of_z = if z < 0 then 0-z else z;

(* every kind of expression has :_
- syntax :- how to write down expression
- type-checking rule - what types are allowd for subexpressions and what type this expressoion return
- evluation --how we run when it part of program

________________________________________________
type-checking --> current static environment
Evalution -----> current dynamic envrionment

)

addition --> e1 + e2

type checking -> both e1 and e2 must hav int type
evulation :- evaluate to e1 to e2 to value


*)

(* 
conditional syntex :_       
if e1 then e2 else e3
where if , then and else are syntex and lang. keyword

type-checking :-
first e1 must have type bool;
and e2 and e3 can be any type (T) but must have same type Q! important
--> the total type of conditional expression will be (T) type

)