; nothing different
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (abs x)
  (if (< x 0)
      (- 0 x)
      x))
(define (square x)
  (* x x))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))
(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
(define (new-sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (new-sqrt-iter (improve guess x)
                     x)))
(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))

(sqrt 9)
(new-sqrt 9)
(sqrt 1000000000000000000000000000000000000000000000)
(sqrt 0.00000000000000000000000000000000000000000001)
