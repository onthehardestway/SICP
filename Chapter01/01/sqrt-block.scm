(define (average x y)
  (/ (+ x y) 2))
;Value: average

(define (sqrt x)
  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
	guess
	(sqrt-iter (improve guess x) x)))
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (sqrt-iter 1.0 x))
;Value: sqrt

(sqrt 2)
;Value: 1.4142156862745097

(sqrt 3)
;Value: 1.7321428571428572

(sqrt 9)
;Value: 3.00009155413138

(sqrt (+ 100 37))
;Value: 11.704699917758145

(sqrt (+ (sqrt 2) (sqrt 3)))
;Value: 1.7739279023207892

(square (sqrt 1000))
;Value: 1000.000369924366

;Use free variable x bound in sqrt
;to simplify internal definition
(define (sqrt x)
  (define (sqrt-iter guess)
    (if (good-enough? guess)
	guess
	(sqrt-iter (improve guess))))
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (sqrt-iter 1.0))
;Value: sqrt

(sqrt 2)
;Value: 1.4142156862745097

(sqrt 3)
;Value: 1.7321428571428572

(sqrt 9)
;Value: 3.00009155413138

(sqrt (+ 100 37))
;Value: 11.704699917758145

(sqrt (+ (sqrt 2) (sqrt 3)))
;Value: 1.7739279023207892

(square (sqrt 1000))
;Value: 1000.000369924366
