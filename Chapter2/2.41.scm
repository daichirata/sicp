(define (filter predicate sequence)
  (cond ((null? sequence) '())
        ((predicate (car sequence))
         (cons (car sequence) (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))

(define (enumerate-interval low high)
  (if (> low high)
      '()
      (cons low (enumerate-interval (+ low 1) high))))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (unique-triples n)
  (accumulate append '()
              (map (lambda (i)
                     (accumulate append '()
                                 (map (lambda (j)
                                        (map (lambda (k) (list i j k))
                                             (enumerate-interval 1 n)))
                                      (enumerate-interval 1 n))))
                   (enumerate-interval 1 n))))

(define (sum-triples t)
  (cons t (+ (car t) (cadr t) (caddr t))))

(define (mutch-sum-triples num)
  (map car (filter (lambda (x) (= (cdr x) num))
                   (map sum-triples (unique-triples num)))))

(mutch-sum-triples 5)

