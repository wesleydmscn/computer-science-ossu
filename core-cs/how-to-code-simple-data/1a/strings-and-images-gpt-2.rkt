; PROBLEM
;
; Create 3 images using the 2htdp/image lib. A circle, rectangle and a Text

(require 2htdp/image)

(text "Hello Racket!" 24 "red")
(circle 20 "solid" "blue")
(rectangle 40 60 "solid" "orange")