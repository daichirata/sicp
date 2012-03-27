(define (horner-eval x coefficient-sequence)
  (accumulate
   (lambda (this-coff higher-terms) (+ (* higher-terms x) this-coff))
   0
   coefficient-sequence))

(horner-eval 2 (list 1 3 0 5 0 1))