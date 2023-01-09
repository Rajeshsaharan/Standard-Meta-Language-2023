(* for designing software first thing to understand how to design data types *)

(*first example of one of type using enmuation in sml*)

datatype suit = Club | Diamond | Heart | Spade (*one of *)
 
datatype rank = Jack | Queen | King | Ace | Num of int  (* one of *)


(*design real world example *)

(* we want a student either her/his name or intid *)


datatype studentId = StudentNum of int | Name of string * (string option) * string 



(* for design same for each of type *)

{
    StudentNum : int option,
    firstName: string,
    MiddleName : string option,
    lastName: string

}





