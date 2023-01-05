; here we are going to some function(list as args)

;add n number to list

(define (sum n) (if (= n 0) 0 (+ n (sum (- n 1))) )) ; base case + recursive sum

(sum 10)


;;add all numbers in list

(define (sum2 lon) (cond [(empty? lon) 0] ; BASE CASE 
                  [else (+ (first lon) (sum2 (rest lon)))]
  ))

(sum2 (list 1 2 3 4 5 6 7 8 9 10))


;multiply of all numbers in list


(define (multiply_all lon) (cond [(empty? lon) 1] ;BASE CASE
                                 [else (* (first lon) (multiply_all (rest lon)))]))


(multiply_all (list 1 2 3 4))



; Numer-> ListofNumber until N


(define (produce_list_countdown n) (if (zero? n) ; down the number untill it goes to zero doesnt include zero in list so make it base case
  empty (cons n (produce_list_countdown (- n 1)))))



(produce_list_countdown 10)


;; append the both list '

; (listOfNumber * listofNumber -> listofNumber)
; make cross table

(define (append2 lon1 lon2) (cond [(empty? lon1) lon2] ; BASE CASE 1
                                 [(empty? lon2) lon1] ; BASE CASE2
                                 [else (cons (first lon1) (append2 (rest lon1) lon2))] ; HERE FIRST FIX A LIST AND MAKE ANOTHER LIST TO ADDING ITEM TO IT
                                 ))



(append2 (list 1 2 3) (list 4 5 6))



(define (test x) (letrec ([y (cons 1 empty)]) (cons x y)))

(test 2)