(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define squares (list 1 4 9 16 25))

(list-ref squares 4)

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define (length items)
  (define (length-iter items n)
    (if (null? items)
        n
        (length-iter (cdr items) (+ 1 n))))
  (length-iter items 0))

(length squares)

(append '(3 4) '(1 2 nil))

(car '(nil nil 3))

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(append '(1 2) '(3 4))

(cons 1 '(2 3))
