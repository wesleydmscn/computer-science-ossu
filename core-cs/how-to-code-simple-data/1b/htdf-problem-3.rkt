; PROBLEM:
;
; Use the How to Design Functions (HtDF) recipe to design a function that consumes an image, 
; and appears to put a box around it. Note that you can do this by creating an "outline" 
; rectangle that is bigger than the image, and then using overlay to put it on top of the image. 
; For example:
;
; (boxify (ellipse 60 30 "solid" "red")) should produce .
;
; Remember, when we say DESIGN, we mean follow the recipe.

(require 2htdp/image)

; Image -> Image
; receive an image, and returns an image with a box around it

(check-expect (boxify (circle 10 "solid" "red")) 
              (overlay (rectangle 22 22 "outline" "black")
                       (circle 10 "solid" "red")))
(check-expect (boxify (star 40 "solid" "gray")) 
              (overlay (rectangle 67 64 "outline" "black")
                       (star 40 "solid" "gray")))

(define (boxify img)
  (overlay (rectangle (+ (image-width  img) 2)
                      (+ (image-height img) 2)
                      "outline"
                      "black") img))