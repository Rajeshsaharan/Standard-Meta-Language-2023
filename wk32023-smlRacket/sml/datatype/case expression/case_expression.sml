(* continue from concept.sml*)

(*we can access which constructor this data type made by using pattren-matching and case expression *)


(*pattren matching normally used to know which type of constructor is made from *)

datatype suit = Paan | Chhidi | Eint | Hukum

datatype rank  = Ikka | Badshah | Begam | Jaino | Num of int

type card = suit * rank 


fun is_card_is_Eint_ki_Begam (c :card) = (*function is card -> bool type *)
            case c of 
                (Eint , Begam) => true
                |_ => false