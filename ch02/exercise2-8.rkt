(define (make-interval a b)
  (cons a b))
(define (upper-bound x)
  (max (car x)
       (cdr x)))
(define (lower-bound x)
  (min (car x)
       (cdr x)))
(define (add-interval x y)
  (make-interval (+ (lower-bound x)
                    (lower-bound y))
                 (+ (upper-bound x)
                    (lower-bound y))))

(define (sub-interval x y)
  (add-interval x
                (make-interval (- (lower-bound))
                               (- (upper-bound)))))
  