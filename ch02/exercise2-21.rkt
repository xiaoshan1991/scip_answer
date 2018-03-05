(define (square x)
  (* x x))
(define (square-list items)
  (if (null? items)
      nil
      (cons (square (car items))
            (square-list (cdr items)))))
(define (square-list-1 items)
  (map square items))
(square-list (list 1 2 3 4))
(square-list-1 (list 1 2 3 4))

