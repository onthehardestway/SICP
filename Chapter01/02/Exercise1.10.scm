(define (A x y)
  (cond ((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
	(else (A (- x 1)
		 (A x (- y 1))))))
;Value: a

(A 1 10)
;Value: 1024

;(A 1 10)
;(A 0 (A 1 9))
;(* 2 (A 1 9))
;(* 2 (A 0 (A 1 8)))
;(* 2 (* 2 (A 0 (A 1 7))))
;(* 2 (* 2 (* 2 (A 0 (A 1 6)))))
; So (A 1 n) = 2^n = 1024


(A 2 4)
;Value: 65536

;(A 2 4)
;(A 1 (A 2 3))
;(A 1 (A 1 (A 2 2)))
;(A 1 (A 1 (A 1 (A 2 1))))
; As (A 1 n) = 2^n, so
;(A 1 (A 1 (A 1 2)))
;(A 1 (A 1 4))
;(A 1 16)
;2^16
; So (A 2 n) = 2^2^... (n times)
;Exponentation is right-associative. Hence:
;2^2^2^2 = 2^(2^(2^2)) = 2^(2^4) = 2^16 = 65536

(A 3 3)
;Value: 65536

;(A 3 3)
;(A 2 (A 3 2))
;(A 2 (A 2 (A 3 1)))
;(A 2 (A 2 2))
; As (A 2 n) = 2^2^2... (n times), so
;(A 2 2^2)
;(A 2 4)
;2^2^2^2
;65536

(define (f n) (A 0 n))
;Value: f

(f 1)
;Value: 2

(f 2)
;Value: 4

(f 3)
;Value: 6

(f 4)
;Value: 8

(f 5)
;Value: 10

;f(n) = 2n

(define (g n) (A 1 n))
;Value: g

(g 1)
;Value: 2

(g 2)
;Value: 4

(g 3)
;Value: 8

(g 4)
;Value: 16

(g 5)
;Value: 32

(g 6)
;Value: 64

;g(n) = 2^n

(define (h n) (A 2 n))
;Value: h

(h 1)
;Value: 2

(h 2)
;Value: 4

(h 3)
;Value: 16

(h 4)
;Value: 65536

(h 5)
;Aborting!: maximum recursion depth exceeded

;h(n) = 2^2^2^...(n times)

