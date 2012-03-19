;;よくわからなかったので解答みた
;;以下 http://sicp.ipl.t.u-tokyo.ac.jp/solution/ex1.1.html

;;本文にあるsqrtのプログラムでは
;; (sqrt 2) ==> 1.4142156862745097
;; (sqrt 0.02) ==> .1444238094866232
;; (sqrt 0.0002) ==> .03335281609280434
;; また大きい方は
;; (sqrt 200000000000000000000) good-enough?が真にならず停止しなくなる.
;; そこで相対誤差による評価に変更する.

(define (sqrt x)
  (define (improve guess)
    (define (average x y)
      (/ (+ x y) 2))
    (average guess (/ x guess)))
  (define (sqrt-iter last-guess next-guess)
    (define (good-enough?)
      (< (abs (/ (- last-guess next-guess) next-guess))
         0.001))
    (if (good-enough?)
        next-guess
        (sqrt-iter next-guess (improve next-guess))))
  (sqrt-iter 1.0 (improve 1.0)))

(sqrt 9)



