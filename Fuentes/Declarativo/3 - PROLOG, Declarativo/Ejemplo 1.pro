% La sintaxis es factorial(N, F) -> Factorial de N es F (el resultado se guarda en F)
factorial(0, 1). % El Factorial de 0 es 1, esto es un HECHO
factorial(1, 1). % El Factorial de 1 es 1, esto es un HECHO
factorial(N, F) :-  % El factorial de F de N
	N>0,   			% N tiene que ser mayor que 0, esto es una REGLA
	N1 is N - 1, 	% N1 es el entero anterio
	factorial(N1, F1), % F1 es Factorial de N1
	F is N * F1. % F es el numero N * el factorial anterior.


/** <examples>

¿Cuál es el Factorial de uno?
? - factorial(1,F).
F = 1

¿Cuál es el Factorial de cinco?
? - factorial(5,F).
F = 5

¿Es 120 factoroal de 5?
? - factorial(5,120).
yes

¿Es 121 factorual de 5?
? - factorial(5,121)
no

*/
