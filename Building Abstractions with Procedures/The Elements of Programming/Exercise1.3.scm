(define (sum-of-suqare a b)
  (+ (* a a) (* b b)))
;Value: sum-of-suqare

(define (sum-of-square-of-larger-two a b c)
  (cond ((and (>= b a) (>= c a)) (sum-of-suqare b c))
	((and (>= a b) (>= c b)) (sum-of-suqare a c))
	((and (>= a c) (>= b c)) (sum-of-suqare a b))))
;Value: sum-of-square-of-larger-two

(sum-of-square-of-larger-two 1 2 3)
;Value: 13

(sum-of-square-of-larger-two 2 1 3)
;Value: 13

(sum-of-square-of-larger-two 2 3 1)
;Value: 13

(sum-of-square-of-larger-two 3 3 3)
;Value: 18
