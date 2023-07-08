; PROBLEM:
;
; Write a function that takes in a list of numbers and returns the sum of the positive numbers
; in the list. Use the 'cond' expression to handle different cases and return appropriate values.
;
; Example usage:
; (sum_positive '(1 2 -3 4 -5)) ; should return 7
; (sum_positive '(-1 -2 -3 -4)) ; should return 0

(check-expect (sum-positive (cons 1 (cons 2 (cons -3 (cons 4 (cons -5 empty)))))) 7)
(check-expect (sum-positive (cons -1 (cons -2 (cons -3 (cons -4 empty))))) 0)

(define (sum-positive numbers)
  (cond [(empty? numbers) 0]
        [(> (first numbers) 0) (+ (first numbers) (sum-positive (rest numbers)))]
        [else (sum-positive (rest numbers))]
    )
)