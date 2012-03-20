; a
(define (product factor a next b)
  (if (> a b) 1
      (* (factor a)
         (product factor (next a) next b))))

(define (factorial n)
  (define (next n) (+ n 1))
  (define (factor n) n)
  (product factor 1 next n))

; b
(define (product_i factor a next b)
  (define (product-iter x a)
    (if (> a b) x
        (product-iter (* x (factor a)) (next a))))
  (product-iter 1 a))

(define (factorial_i n)
  (define (next n) (+ n 1))
  (define (factor n) n)
  (product_i factor 1 next n))
