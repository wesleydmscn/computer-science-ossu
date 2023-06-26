; PROBLEM
;
; Create 3 circles using the 2htdp/image lib. And set overlay output

(require 2htdp/image)

(overlay (circle 20 "solid" "blue")
         (circle 40 "solid" "red")
         (circle 60 "solid" "yellow"))
