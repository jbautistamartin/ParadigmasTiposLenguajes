% ¿Puedes descigrar el codigo?
% _ _ _
% 682: Un número es correcto y en su posición correcta.
% 614: Un número es correcto pero mal posicionado.
% 206: Dos números son correctos peros su posición no.
% 706: Nada es correcto.
% 780: Un número es correcto pero mal posicionado.

% Definición de hechos

% 682: Un número es correcto y en su posición correcta.
regla1(X,_,_):- X==6.
regla1(_,X,_):- X==8.
regla1(_,_,X):- X==2.

% 614: Un número es correcto pero mal posicionado.
regla2(_,X,_):- X==6.
regla2(_,_,X):- X==6.
regla2(X,_,_):- X==1.
regla2(_,_,X):- X==1.
regla2(X,_,_):- X==4.
regla2(_,X,_):- X==4.

% 206: Dos números son correctos peros su posición no.

% Regla 3 parte uno. Un numero es correcto pero mal posicionado
regla3a(_,X,_):- X==2.
regla3a(_,_,X):- X==2.
regla3b(X,_,_):- X==0.
regla3b(_,_,X):- X==0.
regla3c(X,_,_):- X==6.
regla3c(_,X,_):- X==6.

% Regla 3 parte dos. dos numeros son correctos

regla3(A,B,C):- regla3a(A,B,C), regla3b(A,B,C).
regla3(A,B,C):- regla3a(A,B,C), regla3c(A,B,C).
regla3(A,B,C):- regla3b(A,B,C), regla3c(A,B,C).


% 738: Nada es correcto.
regla4(X,Y,Z):- not(member(7,[X,Y,Z])),
    			not(member(3,[X,Y,Z])),
    			not(member(8,[X,Y,Z])).

% 780: Un número es correcto pero mal posicionado
regla5(_,X,_):- X==7.
regla5(_,_,X):- X==7.
regla5(X,_,_):- X==8.
regla5(_,_,X):- X==8.
regla5(X,_,_):- X==0.
regla5(_,X,_):- X==0.

% El codigo debe complir todas las reglas
codigo(X,Y,Z):-  regla1(X,Y,Z), 
    			 regla2(X,Y,Z), 
    			 regla3(X,Y,Z), 
    			 regla4(X,Y,Z), 
    			 regla5(X,Y,Z).

% Si tengo el codigo en un conjunto lo convierto en parametros
% para correr la regla anterior
codigo([X,Y,Z]):- codigo(X,Y,Z),!.


% Genero los posibles resultados,segun las pistas, deben ser
% 0,1,2,3,4,6,7,8 (curiosamente no esta el 5, ni el 9)
% crea una coleccion de matrices que va desde [0,0,0] a [8,8,8]
posiblesResultados(R):- M=[0,1,2,3,4,6,7,8],
    					findall(N,member(N,M),L),
    					findall([X,Y,Z],(member(X,L),member(Y,L),member(Z,L)),R).
    

% De los posibles resultados, busca los que cumplan el codigo
buscarCodigo(R):- posiblesResultados(M),
    			  findall(L, (member(L,M), codigo(L)),R).


/* Resultados
?- buscarCodigo(R).
R = [[0, 4, 2], [0, 6, 2]]


El resultado 042 cumple todas las reglas.
El resultado 062 tambien las cumple, de forma no excluyente.

*/