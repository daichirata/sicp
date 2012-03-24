(define (collect operater list)
  (if (null? list)
      ()
      (if (operater (car list))
          (cons (car list) (collect operater (cdr list)))
          (collect operater (cdr list)))))

(define (collect-even list)
  (collect even? list))

(define (collect-odd list)
  (collect odd? list))

(define (same-parity x . y)
  (if (even? x)
      (cons x (collect-even y))
      (cons x (collect-odd y))))

(same-parity 1 2 3 4 5 6 7 8 9 10)

