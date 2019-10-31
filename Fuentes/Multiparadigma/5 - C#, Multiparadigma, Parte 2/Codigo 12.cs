// Puede probar este codigo en https://repl.it/languages/csharp

using System;
using System.Collections.Generic;
using System.Linq;


public static class Program
{
    private static void Imprimir(this IEnumerable<int> arraInt)
    {
          Console.WriteLine($"[\"{String.Join("\", \"", arraInt.Select(x => x.ToString()))}\"]");
    }

    public static void Main()
    {
        int[] numeros = new int[] { 1, 2, 3 };

        // Imprimir el cuadro de cada numero
        var cuadrados = numeros.Select(x => x * x);

        //Salida: ["1", "4", "9"]

        cuadrados.Imprimir();
        Console.ReadLine();
    }
}

