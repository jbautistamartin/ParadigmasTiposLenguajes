using System;

public static class Program
{
	public static void Main()
	{
		var mensaje = "Hola mundo";
		var mensajes = new string[]{"Hola Juan", "Hola Maria", "Hola Pedro", "Hola Jose", "Hola Elias", "Hola Gustavo", "Hola Edgar"};
		var mensajesUnidos = String.Join("[\", \"", mensajes + "]");
		Console.ReadLine();
	}
}