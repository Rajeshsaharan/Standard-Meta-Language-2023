(* record can be defined by curley bracket*)

val a = {name="rajesh", age = 23}

(*tuples can be defined directly*)

val b = (1,2)

(* key according natural number tuples will be converted into records *)

val c = {1 = "rajesh" 2= "amit" 3= "rahul"}

(* will be converted into tuples ("rajesh", "amit", "rahul") *)

(*actually all tuples are records synatctic sugar*)
