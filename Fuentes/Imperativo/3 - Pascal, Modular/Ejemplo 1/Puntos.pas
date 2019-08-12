unit Puntos;

interface

type

//Representan un punto
TPunto = record
     x:integer;
     y:integer;
end;

//Obtiene un punto desde el teclado
function obtenerPunto(): TPunto;

//Cacula la distancia entre dos puntos
function calcularDistancia(punto1: TPunto; punto2:TPunto): real;

implementation
Uses Math;

function obtenerPunto(): TPunto;
var
  punto:TPunto;
begin
   write('Introcuzca la X del punto: ');
   readln(punto.x);
   write('Introcuzca la Y del punto: ');
   readln(punto.y);

   obtenerPunto:= punto;
end;

function calcularDistancia(punto1: TPunto; punto2:TPunto): real;
begin
   calcularDistancia:=  sqrt( power(punto2.x-punto1.x,2) + power(punto2.y-punto1.y,2))
end;

end.

