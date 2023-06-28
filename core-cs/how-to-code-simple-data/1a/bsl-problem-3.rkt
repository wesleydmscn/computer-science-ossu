; PROBLEM:
;
; Use the DrRacket square, beside and above functions to create an image like this one:
;
; [Four Squares]
;
; If you prefer to be more creative feel free to do so. You can use other DrRacket image 
; functions to make a more interesting or more attractive image.

(require 2htdp/image)

(above (beside (square 40 "solid" "blue")
               (square 40 "solid" "orange"))
       (beside (square 40 "solid" "orange")
               (square 40 "solid" "blue")))