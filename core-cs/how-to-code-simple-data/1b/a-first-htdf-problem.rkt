; PROBLEM:
;
; Design a function that pluralizes a given word. (Pluralize means to convert the word to its
; plural form.) For simplicity you many assume that just adding S is enough to pluralize a word.

;; String -> String
;; given a word produces a pluralize version of word

(check-expect (pluralize "ball") "balls")
(check-expect (pluralize "word") "words")

;(define (pluralize str) "s")

(define (pluralize str)
  (string-append str "s"))