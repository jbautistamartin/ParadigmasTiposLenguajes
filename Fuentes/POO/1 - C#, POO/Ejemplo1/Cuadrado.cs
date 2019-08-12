namespace DesdeLasHorasExtras.EjemploPoligonos
{
    /// <summary>
    /// Representa un cuadrado, un cuadrado es un rectangulo que tiene sus cuadro lados iguales.
    /// </summary>
    internal class Cuadrado : Rectangulo
    {
        /// <summary>
        /// Tamaño del lado (todos los lados son iguales).
        /// </summary>
        public int TamanoLado
        {
            get
            {
                return Largo;
            }
        }

        /// <summary>
        /// Constructor de cuadrado.
        /// </summary>
        /// <param name="tamanoLado">tamaño de los lados.</param>
        public Cuadrado(int tamanoLado) : base(tamanoLado, tamanoLado)
        {
        }
    }
}