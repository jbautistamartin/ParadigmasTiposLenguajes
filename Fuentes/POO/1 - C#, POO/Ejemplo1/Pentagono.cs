namespace DesdeLasHorasExtras.EjemploPoligonos
{
    /// <summary>
    /// Un pentagono regular, tiene cinco lados iguales.
    /// </summary>
    internal class PentagonoRegular : Poligono
    {
        /// <summary>
        /// Tamaño del lado (todos los lados son iguales).
        /// </summary>
        public int TamanoLado
        {
            get;
            private set;
        }

        /// <summary>
        /// Constructor del pentagono.
        /// </summary>
        /// <param name="ancho">tamaño del lado.</param>
        /// <param name="largo">Largo.</param>
        public PentagonoRegular(int tamanoLado) : base(5)
        {
            this.TamanoLado = tamanoLado;
        }

        /// <summary>
        /// Calcula el area del pentagono.
        /// </summary>
        /// <returns>Area</returns>
        public override double CalcularArea()
        {
            double apotema = TamanoLado / 1.45;
            return ((5 * TamanoLado) * apotema) / 2;
        }
    }
}