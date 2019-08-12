program Ejemplo1;
uses
    Puntos, SysUtils;

var
   punto1 :TPunto;
   punto2 :TPunto;
   distancia: real;


begin

  writeln('Introduzca el punto uno: ');
  punto1:= obtenerPunto();
  writeln();

  writeln('Introduzca el punto dos: ');
  punto2:= obtenerPunto();
  writeln();

  distancia:= calcularDistancia(punto1, punto2);

  writeln();
  write('La distancia entre el punto uno y el punto dos es: ');
  writeln(Format('%.2f', [distancia]));
  writeln();
  writeln('Pulse enter para salir...');
  readln();

end.
