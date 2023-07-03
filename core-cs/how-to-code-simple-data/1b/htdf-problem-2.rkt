; PROBLEM:
;
; DESIGN function that consumes a string and determines whether its length is
; less than 5.  Follow the HtDF recipe and leave behind commented out versions 
; of the stub and template.

; String -> Boolean
; given a string, return if length is less than 5

(check-expect (is-less? "hello") false)
(check-expect (is-less? "hi") true)

; (define (is-less? str) false)

(define (is-less? str)
        (< (string-length str) 5))