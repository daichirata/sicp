(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons (square (car things)) answer))))
  (iter items '()))

(square-list (list 1 2 3 4))

; 逆順の理由
; answerをconsの第2引数に与えているため、結果がどんどん前に追加されていく

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer (square (car things))))))
  (iter items '()))

(square-list (list 1 2 3 4))

; 動かない理由
; consだとリストの結合ではなくリストの要素にリストを追加するから
; 正しく動かしたいのであればconsをappendに、第2引数をlistとして返せば良い
