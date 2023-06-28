;PROBLEM:
;
; Given the following function definition:
;
(define (foo n)
    (* n n))
;
; Write out the step-by-step evaluation of the expression: 
;
(foo (+ 3 4))
;
; Be sure to show every intermediate evaluation step.

(+ 3 4) ; step 1
(foo 7) ; step 2
(* 7 7) ; step 3