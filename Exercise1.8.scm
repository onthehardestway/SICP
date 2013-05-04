(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))
;Value: cube-root-iter

(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x))
     0.001))
;Value: good-enough?

(define (improve guess x)
  (/ (+ (/ x (square guess))
	(* 2 guess))
     3))
;Value: improve

(define (cube-root x)
  (cube-root-iter 1.0 x))
;Value: cube-root


(cube-root 8)
;Value: 2.000004911675504


(cube-root 27)
;Value: 3.0000005410641766


(cube-root 5)
;Value: 1.7100597366002945

(let ((root (cube-root 5)))
  (* root root root))
;Value: 5.000735045685183

