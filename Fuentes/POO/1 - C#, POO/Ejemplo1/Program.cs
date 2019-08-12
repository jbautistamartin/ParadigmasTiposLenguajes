using System;

namespace DesdeLasHorasExtras.EjemploPoligonos
{
    internal class Program
    {
        private static void Main(string[] args)
        {
            //Creo los poligonos, es de notar que cada poligono es de un tipo diferente.

            Poligono rectangulo = new Rectangulo(2, 5);
            Poligono cuadrado = new Cuadrado(8);
            Poligono triangulo = new Triangulo(10, 12);
            Poligono pentagono = new PentagonoRegular(2);

            // Muestro el area de cada poligono

            Console.WriteLine("El area de rectangulo es: " + rectangulo.CalcularArea().ToString("0.##"));
            Console.WriteLine("El area del cuadrado es: " + cuadrado.CalcularArea().ToString("0.##"));
            Console.WriteLine("El area del triangulo es: " + triangulo.CalcularArea().ToString("0.##"));
            Console.WriteLine("El area del pentagono es: " + pentagono.CalcularArea().ToString("0.##"));

            // Muestro el area tota,
            Console.WriteLine("El area total es: " + SumarAreas(rectangulo, cuadrado, triangulo, pentagono).ToString("0.##"));
            Console.ReadLine();
        }

        /// <summary>
        /// El metodo suma las areas de un conjunto de poligonos, es de notar que no se especifica el tipo de poligono.
        /// </summary>
        /// <param name="poligonos"></param>
        /// <returns></returns>
        private static double SumarAreas(params Poligono[] poligonos)
        {
            double result = 0;
            foreach (Poligono poligono in poligonos)
            {
                //Ejecuto por cada poligo su función calcular area, que es diferente segun el caso.
                result += poligono.CalcularArea();
            }
            return result;
        }
    }
}