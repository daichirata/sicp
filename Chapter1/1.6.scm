(define (square x)
  (* x x))

(define (average x y )
  (/ (+ x y) 2))

; Newton法 -> (対象 + (対象/予測値)) / 2
; これを繰り返すことで平方根の近似度が上がっていく
(define (improve guess x)
  (average guess (/ x guess)))

; 対象(x)と、予測値(guess)を２乗した値の差が0.001以内であることを測る
(define (good-enough? guess x)
  (< (abs (- (square guess) x))
     0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

; 予測値は何でもいいっぽい(どうせimproveで近似していくから)
(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)

;--問題--

(define (new-if predicate then-clause else-clause)
  (cond (predicate thne-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(sqrt 9)

new-ifで定義した場合、スペシャルフォームでは無いためelse-clauseも評価してしまいプログラムが止まらない