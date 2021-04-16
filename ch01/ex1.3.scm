(define (square x) (* x x))
(define (square-of-sum x y) (+ (square x) (square y)))
(define (fx x y z) (cond ((= (min x y z) x) (square-of-sum y z))
                         ((= (min x y z) y) (square-of-sum x z))
                         (else (square-of-sum y z))
                         ))

(fx 4 2 3)
