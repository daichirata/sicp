(define (sumsqr a b c)
  (cond
   ((and (>= a c) (>= b c)) (+ (* a a) (* b b)))
   ((and (>= b a) (>= c a)) (+ (* b b) (* c c)))
   ((and (>= a b) (>= c b)) (+ (* a a) (* c c)))))

(sumsqr 1 2 3)
