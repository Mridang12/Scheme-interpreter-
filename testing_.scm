(define (cadr lst) (car (cdr lst)))


(define (zip pairs)
    (cons (map car pairs)
          (cons (map cadr pairs) nil))
)

(zip nil)
