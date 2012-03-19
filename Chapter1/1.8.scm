;;よくわからなかったので解答みた
;;以下 http://sicp.ipl.t.u-tokyo.ac.jp/solution/ex1.1.html

(define (cube-root x)
  (define (good-enough? guess x)
    (< (abs (- (* guess guess guess) x)) 0.001))
  (define (improve guess x)
    (/ (+ (/ x guess guess) guess guess) 3))
  (define (cube-root-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-root-iter (improve guess x) x)))
  (cube-root-iter 1.0 x))

(cube-root 8);=> 2.000004911675504
(cube-root 1729);=> 12.00231441503121