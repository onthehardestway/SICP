(load-option 'format)
;Value: format


(define (sqrt-iter guess x counter)
  (if (good-enough? guess x)
      (begin (format #t ";counter:~@8A~%" counter) guess)
      (sqrt-iter (improve guess x) x (+ counter 1))))
;Value: sqrt-iter


(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
;Value: good-enough?


(define (improve guess x)
  (average guess (/ x guess)))
;Value: improve


(define (average x y)
  (/ (+ x y) 2))
;Value: average


(define (sqrt x)
  (sqrt-iter 1.0 x 1))
;Value: sqrt


(sqrt 1.23456789e-60)
;counter:       6
;Value: .03125
;fixed epsilon: 0.001 is too large for x: 1.23456789e-60
;so get wrong result

(sqrt 1.23456789e60)
;Use C-c C-b to set breakpoint

;Break!
;To continue, call RESTART with an option number:
; (RESTART 2) => Continue from breakpoint.
; (RESTART 1) => Return to read-eval-print level 1.

;Then use C-c C-d to open debugger
;From debugger, we know that when guess == 1.1111111060555555e30
;the improved guess is 1.1111111060555555e30 too,
;so the recursive will not stop

;Then use C-c C-c to quit
;Quit!

;TODO:
;Why not stack overflow, like Exercise1.6
;Aborting!: maximum recursion depth exceeded

(define (good-enough? guess x)
  (< (/ (abs (- (improve guess x) guess)) guess) 0.001))
;Value: good-enough?

(sqrt 1.23456789e-60)
;counter:     103
;Value: 1.111139495736747e-30


(sqrt 1.23456789e60)
;counter:     103
;Value: 1.1113526478631319e30
