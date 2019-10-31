// Puede probar este codigo en https://repl.it/languages/csharp

using System;


public static class Program
{
    private static void Imprimir(this string[] arrString)
    {
        Console.WriteLine($"[ \"{String.Join("\", \"", arrString)}\"] ");
    }

    public static void Main()
    {
        string[] mensajes = new string[] { "Hola Juan", "Hola Maria", "Hola Pedro", "Hola Jose", "Hola Elias", "Hola Gustavo", "Hola Edgar" };

        //Salida: [ "Hola Juan", "Hola Maria", "Hola Pedro", "Hola Jose", "Hola Elias", "Hola Gustavo", "Hola Edgar"]

        mensajes.Imprimir();
        Console.ReadLine();
    }
}