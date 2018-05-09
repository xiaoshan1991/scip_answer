#lang sicp

(define (cycle? x)
  (let ((visited '()))
    (define (cycle-helper x)
      (cond ((not (pair? x))
             #f)
            ((memq x visited)
             #t)
            (else
             (set! visited (cons x visited))
             (or (cycle-helper (car x))
                 (cycle-helper (cdr x))
                 ))))
    (cycle-helper x)))