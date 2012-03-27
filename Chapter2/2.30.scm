(define square (lambda (x) (* x x)))

(define (square-tree items)
  (cond ((null? items) '())
        ((not (pair? items)) (square items))
        (else (cons (square-tree (car items))
                    (square-tree (cdr items))))))

(square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))

(trace square-tree)
(define (square-tree items)
  (map (lambda (x)
         (if (not (pair? x))
             (square x)
             (square-tree x)))
       items))

(square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))
