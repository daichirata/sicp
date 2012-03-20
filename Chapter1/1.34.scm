(define (square x) (* x x))

(define (f g)
  (g 2))

(f square)

(f (lambda (z) (* z (+ z 1))))

(f f)

;これは(2 2)に展開される。2はoperatorじゃないのでエラー