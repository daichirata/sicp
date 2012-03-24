(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q)))

(define z (cons 4 8))

(car z)

(cdr z)

(define zero (lambda (f) (lambda (x) x)))

((zero 2) 3)