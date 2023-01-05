
;; (let ([id expr]  body)) ; variable defined in let body can be used inside the body

(let ([x 2]) (cons x empty))

; let* (let* ([id expr]) body +)) ; variable defined in let block can be used in another expression & body both


(let* ([x 2] [y (cons 1 (cons x empty)) ])  x)


(local [(define x 2)] x)

;all are local binding
; local is best use for local binding