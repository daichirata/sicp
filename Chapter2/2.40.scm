(define (enumerate-interval low high)
  (if (> low high)
      '()
      (cons low (enumerate-interval (+ low 1) high))))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (unique-pairs n)
  (accumulate append '()
              (map (lambda (x) (map (lambda (y) (list x y))
                                    (enumerate-interval 1 (- x 1))))
                   (enumerate-interval 1 n))))

(unique-pairs 5)


(define (prime-sum-pairs n)
  (map make-pair-sum
       (filter prime-sum?
               (flatmap
                (lambda (i)
                  (map (lambda (j) (list i j))
                       (enumrate-interval 1 (- i 1))))
                (enumrate-interval 1 n)))))

(define (prime-sum-pairs n)
  (map make-pair-sum (filter prime-sum? (unique-pairs n))))


