; PROBLEM:
;
; Write a function that checks if a number is even

(define (is-even number)
    (if (= (remainder number 2) 0) "is even" "not even"))

(is-even 4)
(is-even 5)