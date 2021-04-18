;case1:
;   (+ 4 5)
;   (inc (+ (- 4 1) 5))
;   (inc (inc (+ (- 4 1 1) 5)))
;   (inc (inc (inc (+ (- 4 1 1 1) 5))))
;   (inc (inc (inc (inc (+ (- 4 1 1 1 1) 5)))))
;   (inc (inc (inc (+ 0 5 1))))
;   (inc (inc (+ 0 5 1 1)))
;   (inc (+ 0 5 1 1 1))
;   (+ 0 5 1 1 1 1)
;   (9)
;case2:
;   (+ 4 5)
;   (+ (- 4 1) (+ 5 1))
;   (+ (- 3 1) (+ 6 1))
;   (+ (- 2 1) (+ 7 1))
;   (+ (- 1 1) (+ 8 1))
;   (9)
;conclusion: case1 - recursive, case2 - iterative
