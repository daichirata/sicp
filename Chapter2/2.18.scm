(define (reverse list1)
  (if (null? (cdr list1))
      list1
      (append (reverse (cdr list1)) (list (car list1)))))

(reverse (list 1 4 9 16 25))

