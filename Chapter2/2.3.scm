(define (make-rectangle side0 side1) (cons side0 side1))
(define (side0 rec) (car rec))
(define (side1 rec) (cdr rec))

(define (perimeter rec) (* (+ (side0 rec) (side1 rec)) 2))
(define (area rec) (* (side0 rec) (side1 rec)))

(define rec0 (make-rectangle 30 40))

(perimeter rec0)
(area rec0)



