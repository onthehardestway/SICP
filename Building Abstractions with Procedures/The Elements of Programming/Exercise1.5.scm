(define (p) (p))
;Value: p

(define (test x y)
  (if (= x 0) 0 y))
;Value: test

(test 0 (p))
;Quit!
