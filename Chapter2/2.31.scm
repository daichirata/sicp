(define (square-tree tree)
  (tree-map square tree))

(define (tree-map proc tree)
  (map (lambda (x) (if (not (pair? x))
                       (proc x)
                       (tree-map proc x)))
       tree))

(square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))
