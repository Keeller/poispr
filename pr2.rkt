#lang racket
(
define (re dataDisplay)
 (display dataDisplay)
 (display " ")
 (read)
)

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
 define (isGreat date)
  (if (not (eq? date 1939))
      (printr "Не правильно. Вторая мировая война началась в 1939 г.")
      (printr "Все верно!")
   )
)


(
 define (cickl R1 R2)
  (if (> R1 R2)
  (* 3.14 (- (* R1 R1) (* R2 R2)))
  (printr "Радиус кольца не может быть больше радиуса отверстия")
  )
)

(
define (isVis date)
 (if (= (modulo date 4) 0)
     (printr "Год високосный")
     (printr "Год не високосный")
     )
)

(printr "Вычисление площади кольца.")
(printr "Введите исходные данные")
(println "Итого" (cickl (re "Радиус кольца") (re "Радиус отверстия")))
(printr "В каком году началась вторая мировая война?")
(isGreat (re "Введите число и нажмите Enter"))
(isVis (re "Введите год:"))

