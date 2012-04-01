(define (make-frame origin edge1 edge2)
  (list origin edge1 edge2))

(define (origin-frame frame)
  (car frame))

(define (edge1-frame frame)
  (cadr frame))

(define (edge2-frame frame)
  (caddr frame))

(define (frame-coord-map frame)
  (lambda (vect)
    (add-vect
     (origin-frame frame)
     (add-vect (scale-vect (xcor-vect vect) (edge1-frame frame))
               (scale-vect (ycor-vect vect) (edge2-frame frame))))))
