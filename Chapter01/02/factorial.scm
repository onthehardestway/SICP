(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))
;Value: factorial

(factorial 6)
;Value: 720


(define (factorial n)
  (define (factorial-iter product counter)
    (if (> counter n)
	product
	(factorial-iter (* product counter) (+ counter 1))))
  (factorial-iter 1 1))
;Value: factorial


(factorial 6)
;Value: 720
