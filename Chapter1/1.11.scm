; 再帰的
(define (fr n)
  (if (< n 3) n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

;反復的
(define (fi n)
 (f-iter 2 1 0 n))

(define (f-iter a b c n)
 (cond ((= n 0) c)
       ((= n 1) b)
       ((= n 2) a)
       (else (f-iter (+ a (* 2 b) (* 3 c)) a b (- n 1)))))

;展開してみる
(f-iter 2 1 0 5)
(f-iter (+ 2 1 1 0 0) 2 1 (- 5 1))
(f-iter 4 2 1 4)
(f-iter (+ 4 2 2 1 1 1) 4 2 (- 4 1))
(f-iter 11 4 2 3)
(f-iter (+ 11 4 4 2 2 2) 11 4 (- 3 1))
(f-iter 25 11 4 2)
25

; (+ (f (- n 1))
;    (* 2 (f (- n 2)))
;    (* 3 (f (- n 3))))
; の (- n *) の部分は前回、前々回になるので(木構造)、そのぶんの引数を用意。
; そんでもってそれらを足した数を主とした反復を行えば良い

;; 以下反復の練習
(define (factorial n)
  (if (= 0 n)
      1
      (* n (factorial (- n 1)))))

(define (f n)
  (define (fa-iter a n)
    (if (= n 0) a
        (fa-iter (* a n) (- n 1))))
  (fa-iter 1 n))
(f 5)

(define (sum-r n)
  (cond ((= n 0) 0)
        (else (+ n (sum-r (- n 1))))))

(define (sum n)
  (define (sum-iter a n)
    (if (= n 0) a
        (sum-iter (+ a n) (- n 1))))
  (sum-iter 0 n))

(define (sum-2 n)
  (define (sum-2-iter a count max)
    (if (> count max) a
        (sum-2-iter (+ a count) (+ count 1) max)))
  (sum-2-iter 0 1 n))

(sum-2 10)
(sum 10)

(define (fib n)
  (cond
   ((= n 1) 1)
   ((= n 2) 1)
   (else (+ (fib (- n 1))
            (fib (- n 2))
            ))))

(define (fib-i n)
  (fib-iter 1 1 n))

(define (fib-iter a b n)
  (cond ((= n 1) b)
        ((= n 2) a)
        (else (fib-iter (+ a b) a (- n 1)))))

(define (fib-i-2 n)
  (fib-iter-2 1 1 0 n))

(define (fib-iter-2 a b count max)
  (if (> count max) a
      (cond ((or (= count 1) (= count 2))
             (fib-iter-2 1 1 (+ count 1) max))
            (else
             (fib-iter-2 (+ a b) a (+ count 1) max)))))

(fib 12)
(fib-i 10)
(fib-i-2 12)

