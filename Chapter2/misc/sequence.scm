(define square (lambda (x) (* x x)))

(map square (list 1 2 3 4 5))

(define (filter predicate sequence)
  (cond ((null? sequence) '())
        ((predicate (car sequence))
         (cons (car sequence) (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))

(filter odd? (list 1 2 3 4 5))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(accumulate + 0 (list 1 2 3 4 5))

(accumulate cons '() (list 1 2 3 4 5))

(define (enumerate-interval low high)
  (if (> low high)
      '()
      (cons low (enumerate-interval (+ low 1) high))))

(define (enumerate-tree tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (list tree))
        (else (append (enumerate-tree (car tree))
                      (enumerate-tree (cdr tree))))))

(enumerate-tree (list 1 (list 2 (list 3 4) 5)))

(define (sum-odd-squares tree)
  (accumulate + 0
              (map square
                   (filter odd? (enumerate-tree tree)))))

(define (even-fibs n)
  (accumulate cons '()
              (filter even?
                      (map fib
                           (enumerate-interval 0 n)))))

(define (list-fib-squares n)
  (accumulate cons nil
              (map square
                   (map fib
                        (enumerate-interval 0 n)))))

(define (product-of-squares-of-odd-elements sequence)
  (accumulate * 1
              (map square
                   (filter odd? sequence))))

(define (salary-of-highest-paid-programmer records)
  (accumulate max 0
              (map salary
                   (filter programmer? records))))


