// Puede probar este codigo en https://repl.it/languages/csharp

using System;
using System.Collections.Generic;
using System.Linq;

public static class Program
{
    private static void Imprimir(this Dictionary<string, string> dicionario)
    {
        var lines = dicionario.Select(e => $"\t{e.Key}: {e.Value}");

        Console.WriteLine($"[{Environment.NewLine}{String.Join(Environment.NewLine, lines)}{Environment.NewLine}]");
    }

    public static void Main()
    {
        Dictionary<string, string> mensajes = new Dictionary<string, string>
        {
            ["saludo_juan"] = "Hola juan",
            ["saludo_maria"] = "Hola Maria",
            ["saludo_pedro"] = "Hola pedro",
        };

        //Salida:
        /*
         * [
         *   saludo_juan: Hola juan
         *   saludo_maria: Hola Maria
         *   saludo_pedro: Hola pedro
         * ]
         */

        mensajes.Imprimir();
        Console.ReadLine();
    }
}