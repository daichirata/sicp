; f(x, y) = f(x - 1, y - 1) + f(x - 1, y)
; f(x, y) で (y <= 1) または (x <= y) の場合は 0

(define (pascal x y)
  (if (or (= y 0) (= x y)) 1
      (+ (pascal (- x 1) (- y 1))
         (pascal (- x 1) y))))

(pascal 4 2)

