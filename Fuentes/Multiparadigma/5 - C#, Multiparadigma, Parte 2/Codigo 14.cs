using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

internal class Persona
{
    public string Nombre { get; set; }
    public string Apellido { get; set; }

    public override string ToString()
    {
        return $"{Nombre} {Apellido}";
    }
}

public static class Program
{
    private static void Imprimir(this IEnumerable<Persona> personas)
    {
        Console.WriteLine($"[ \"{String.Join("\", \"", personas)}\"] ");
    }

    public static void Main()
    {
        // Creo una colección de personas.
        Persona[] personas = new Persona[]{
            new Persona { Nombre="Maria", Apellido="Jimenez"},
            new Persona { Nombre="Juan", Apellido="Perez"},
            new Persona { Nombre="Ana", Apellido="Moreno"},
            new Persona { Nombre="Ruben", Apellido="Gomez"},
            new Persona { Nombre="Pedro", Apellido="Sanchez"},
            new Persona { Nombre="Roberto", Apellido="Hernandez"}
        };

        // ********************************
        // Comprobar si un saludo elemento existe en un array
        // ********************************

        Console.WriteLine($"{personas.Any(x => x.Nombre == "Maria")}");

        // Salida: true

        // ********************************
        // Selecciono elementos no sean Maria o Juan
        // ********************************

        var sinMariaJose = personas.AsParallel()
                .Where(x => x.Nombre != "Maria" && x.Nombre != "Jose")
                .Select(x => x);

        sinMariaJose.Imprimir();

        //Salida [ "Juan Perez", "Ana Moreno", "Ruben Gomez", "Pedro Sanchez", "Roberto Hernandez"]

        // *****************************************************
        // Devolver un array de elementos a mayusculas
        // *****************************************************

        var mayusculas = personas.AsParallel()
            .Select(x =>
                new Persona
                {
                    Nombre = x.Nombre.ToUpper(),
                    Apellido = x.Apellido.ToUpper(),
                }
            );

        mayusculas.Imprimir();

        // Salida: ["HOLA JUAN", "HOLA PEDRO", "HOLA ELIAS", "HOLA GUSTAVO", "HOLA EDGAR"]

        //*****************************************************
        // Buscar un elemento que acaben en o
        // Busco aquellos mensajes que acaben con la letra o, aquí se usan expresiones lamba, las veremos después
        //*****************************************************

        var elementosAcabanO = personas.AsParallel()
            .Where(x => Regex.IsMatch(x.Nombre, @"o$"))
            .Select(x => x);

        elementosAcabanO.Imprimir();

        // Salida: [ "Pedro Sanchez", "Roberto Hernandez"]

        Console.ReadLine();
    }
}