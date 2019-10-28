; Declaro una funcion para calcular el factorial
(defun factorial (n)
  (if (= n 0) 
      1 ;Si n es cero el resultado es 1
      (* n (factorial (- n 1))) ) ) ; En cualquier otro lugar el resultado es N * factorial del numero anterior


(print (factorial 5))

