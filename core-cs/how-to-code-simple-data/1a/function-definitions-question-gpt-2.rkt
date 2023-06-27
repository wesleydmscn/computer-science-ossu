; PROBLEM:
;
; Build a traffic-light using functions

(require 2htdp/image)

(define (bulb color)
      (circle 20 "solid" color))

(above (bulb "red")
       (bulb "yellow") 
       (bulb "green"))
