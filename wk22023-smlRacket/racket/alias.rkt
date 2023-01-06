;; in functional programming you always return aliases because there is no mutable data type
;; state 

#;alias is when same data /object / or something not a copy
;An alias occurs when different variables point directly or indirectly to a single area of storage. Aliasing refers to assumptions made during optimization about which variables can point to or occupy the same storage area. When an alias exists, or the potential for an alias occurs during the optimization process, pessimistic aliasing occurs. This can inhibit optimizations like dead store elimination and loop transformations on aliased variables. Also, pessimistic aliasing can generate additional loads and stores as the compiler must ensure that any changes to the variable that occur through the alias are not lost.

; learn more about :_ https://www.ibm.com/docs/en/xcafbg/9.0.0?topic=SS3KZ4_9.0.0/com.ibm.xlf111.bg.doc/xlfopg/aliasing.html


;; for mutuable data language like java doesnt return a alias because it can be security viol.
;;instead of return a copy or use final keyword etc to protect
