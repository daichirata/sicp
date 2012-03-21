(define (make-segment s e)
  (cons s e))

(define (start-segment cons)
  (car cons))

(define (end-segment cons)
  (cdr cons))

(define (make-point x y)
  (cons x y))

(define (x-point cons)
  (car cons))

(define (y-point cons)
  (cdr cons))

(define (midpoint-segment segment)
  (print-point segment)
  (newline)
  (/ (+ (start-segment segment)
        (end-segment segment))
     2))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(midpoint-segment (make-segment 0 4))

