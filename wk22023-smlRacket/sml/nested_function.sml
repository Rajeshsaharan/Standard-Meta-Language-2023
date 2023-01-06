fun countdown_from_1 ( x:int ) =
        let 
            fun count (from :int , to : int) =
                if from= to
                then to::[]
                else from::count (from +1 , to)
        in 
            count(1 ,x) (*means 0 to 7*)
        end



val a = countdown_from_1 (7)


(*example of nested function *)