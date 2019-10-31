#include <stdio.h>

int sumar_por_2(int numero){
  //Suma dos al número especificado
  return numero + 2;
}

int multiplar_por_2(int numero){
  //Multiplica por dos el número especificado
  return numero *  2;
}


int main(void) {

  int valor=5;

  //Puntero a funcion que devuelve recibe un int y devuelve un int
  int (*funcion) (int);

  //La función apunta a sumar 2
  funcion = &sumar_por_2;

  printf("Valor función: %d\n",funcion(valor));

  //La función apunta a sumar 2
  funcion = &multiplar_por_2;

  printf("Valor función: %d\n",funcion(valor));

  // Salida:
  /*
  * Valor función: 7 
  * Valor función: 10
  */  
  
  return 0;
}