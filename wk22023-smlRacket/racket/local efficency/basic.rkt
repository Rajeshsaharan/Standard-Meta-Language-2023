; return maximum number from list

(check-expect (bad_max empty) 0)
(check-expect (bad_max (list 1)) 1)
(check-expect (bad_max (list 1 2)) 2)
(check-expect (bad_max (list 1 2 3)) 3)
(check-expect (bad_max (list 1 2 3 4 5)) 5)




(define (bad_max lon) (cond [(empty? lon) 0] ; consider what base case produce rest of recursion produce it that term
                            [(empty? (rest lon)) (first lon)]
                            [else (if (> (first lon) (bad_max (rest lon))) (first lon) (bad_max (rest lon)))]
                            ))

(bad_max (list 1 2 3 4 ))



; bad_max( (rest lon)) runs two time it need more compute power

; we can store in variable using local


(define (good_max lon) (cond [(empty? lon) 0]
                             [(empty? (rest lon)) (first lon)]
                             [else (local [(define V (good_max (rest lon)))] (if (= (first lon) V) (first lon) V))]))



(good_max (list 1 2 3 4 5 6 7))






;;here is a sort the list function
;; defining variable for recursive is a good thing

(define (sort2 lon) (cond [(empty? lon) lon]
                          [(empty? (rest lon)) lon]
                          [else (compare (first lon) (sort2 (rest lon)))]))

(define (compare n lon) (cond [(empty? lon) (cons n empty)]
                              [else (if (> n (first lon)) (cons (first lon) (compare n (rest lon))) (cons n lon))]))


(sort2 (list 4 5 2 1))