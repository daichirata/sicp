(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      '()
      (cons (accumulate op init (map car seqs))
            (accumulate-n op init (map cdr seqs)))))

(accumulate-n + 0 '((1 2 3) (4 5 6) (7 8 9) (10 11 12)))

;ちなみに、最初に勘違いしていた実装を動くようにするとこんな感じ
(define (accumulate-n op init seqs)
  (cond ((null? seqs) '())
        ((null? (car seqs)) '())
        (else (cons (accumulate op init (car seqs))
                    (accumulate-n op init (cdr seqs))))))



