
; n1 from n2 to ; must include n2 
(define (countup n1 n2) (if (= n1 n2) (cons n1 empty) (cons n1 (countup (+ n1 1) n2))))

(countup 1 5)

;; here we are using nested function

(define (count_from_1 n2) (countup 1 n2))

(count_from_1 5)


; now nested fuunction using local

(define (count_from_1_v2 n2) (local [(define (countup n1 n2) (if (= n1 n2) (cons n1 empty) (cons n1 (countup (add1 n1) n2))))]
                               (countup 1 n2)))



(count_from_1_v2 5)