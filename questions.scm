(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Problem 15
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 15
  (define (helper s counter)
      (if (null? s) '()
      (cons (list counter (car s)) (helper (cdr s) (+ counter 1)))))
  (helper s 0))
  ; END PROBLEM 15

;; Problem 16

;; Merge two lists LIST1 and LIST2 according to ORDERED? and return
;; the merged lists.
(define (merge ordered? list1 list2)
  ; BEGIN PROBLEM 16
 (define (helper ordered_func lst elem)
  (cond ((ordered_func elem (car lst)) (cons elem lst))
  ((equal? '() (cdr lst)) (cons (car lst) (cons elem nil)))
  ((cons (car lst) (helper ordered_func (cdr lst) elem)))))
  (cond ((equal? '() list2) list1) ((equal? '() list1) list2)
  ((equal? '() (cdr list2)) (helper ordered? list1 (car list2)))
  ((helper ordered? (merge ordered? (cdr list2) list1) (car list2)))))
  
  ; END PROBLEM 16

