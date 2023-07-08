; PROBLEM:
;
; Write a function that takes in three parameters: a number n, a lower limit, and an upper limit.
; The function should return the number of integers between the lower and upper limits (inclusive)
; that are divisible by n without leaving a remainder.
;
; Example usage:
; (count_divisible 3 10 20) ; should return 4
; (count_divisible 2 1 10) ; should return 5

(check-expect (count_divisible 3 10 20) 4)
(check-expect (count_divisible 2 1 10) 5)

(define (count_divisible n lower-limit upper-limit)
        (+ (floor (/ (- upper-limit lower-limit) n)) 1)
)