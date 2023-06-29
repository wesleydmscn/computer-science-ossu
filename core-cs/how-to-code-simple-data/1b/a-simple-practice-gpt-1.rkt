; PROBLEM:
;
; Design a function that calculates the area of a rectangle given its length and width.

;; Two Number -> Number
;; given width and length produces area of a rectangle

(check-expect (rectangle-area 2 3) 6)
(check-expect (rectangle-area 2 8) 16)

; (define (rectangle-area length width) 0)

(define (rectangle-area length width)
        (* length width))