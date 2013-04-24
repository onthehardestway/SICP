(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;Value: a-plus-abs-b

(a-plus-abs-b 1 2)
;Value: 3

(a-plus-abs-b 1 -2)
;Value: 3
