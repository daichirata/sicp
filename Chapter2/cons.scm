(define (cons x y)
  (define (dispatch m)
    (cond ((= m 0) x)
          ((= m 1) y)))
  dispatch)

(define (car z) (z 0))
(define (cdr z) (z 1))

(define z (cons 1 2))

(car z)
(cdr z)
