datatype suit = Paan | Chhidi | Eint | Hukum

datatype rank  = Ikka | Badshah | Begam | Jaino | Num of int

type card = suit * rank 


(*also declare type symnom in records *)

val my_record = {
        studentId : int option,
        firstName : string,
        MiddleName : string option,
        lastName : string

}



