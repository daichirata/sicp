(define (fib x)
  (cond ((= x 1) 1)
        ((= x 2) 1)
        (else (+ (fib (- x 1))
                 (fib (- x 2))))))

(define (even-fibs n)
  (define (next k)
    (if (> k n)
        nil
        (let ((f (fib k)))
          (if (even? f)
              (cons f (next (+ k 1)))
              (next (+ k 1))))))
  (next 0))

(even-fibs 5)