;a
(define (accumulate combiner null-value factor a next b)
  (if (> a b) null-value
      (combiner (factor a)
                (accumulate combiner null-value factor (next a) next b))))

(define (product factor a next b)
  (accumulate * 1 factor a next b))

(define (sum factor a next b)
  (accumulate + 0 factor a next b))


;b
(define (accumulate-i combiner null-value factor a next b)
  (define (accumulate-iter result a)
    (if (> a b) result
        (accumulate-iter (combiner result (factor a)) (next a))))
  (accumulate-iter null-value a))

(define (product-i factor a next b)
  (accumulate-i * 1 factor a next b))

(define (sum-i factor a next b)
  (accumulate-i + 0 factor a next b))
