#lang racket


(
 define (println printedMessage printedData)
  (display printedMessage)
  (display " ")
  (display printedData)
  (display "\n")

)

(
 define (printr message)
  (display message)
  (display "\n")
)
(
 define (sq liste)
 (append
  (list
  (* (car liste) (car liste))
  (* (car (cdr liste)) (car (cdr liste)))
  (* (car (cdr (cdr liste))) (car (cdr (cdr liste))))
  )
  (cdr (cdr (cdr liste)))
  )
)
(
define (cube liste)
 (append
  (list
  (* (car liste) (car liste) (car liste))
  (* (car (cdr liste)) (car (cdr liste)) (car (cdr liste)))
  (* (car (cdr (cdr liste))) (car (cdr (cdr liste))) (car (cdr (cdr liste))))
  )
  (cdr (cdr (cdr liste)))
  ) 
)
(
define (quest15 list)
 (if (= (modulo (car list) 2) 0)
     (sq list)
     (cube list)
  )
)
(
define (last liste)
 (if(null? (cdr liste))
     (car liste)
     (last (cdr liste))
  )
)
(
 define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x))))
  )
(
 define (quest16 liste)
  (if (and (atom? (car liste)) (atom? (last liste)) )
      (list (car liste) (last liste))
      (list? (car (cdr (cdr liste))))

   )

)

(
define (quest14 liste obj)
 (if (and (atom? (car liste)) (atom? obj))
     (append (list obj) (cdr liste))
     (last liste)
 )

)
(printr (quest15 (list 3 3 5 6 7)))
(printr (quest15 (list 2 3 5 6 7)))
(printr (quest16 (list 1 2 3 4 6)))
(printr (quest16 (list 1 3 3 4 null)))
(printr (quest16 (list 1 3 (list 1 2) 4 null)))
(printr (quest14 (list 1 2 3 5 6) "cvs"))
(printr (quest14 (list 1 2 3 5 6) (list 2 3)))
