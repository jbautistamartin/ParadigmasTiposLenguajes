namespace DesdeLasHorasExtras.EjemploPoligonos
{
    /// <summary>
    /// Representa un rectangulo, es un poligono que tiene ancho y largo.
    /// </summary>
    internal class Rectangulo : Poligono
    {
        /// <summary>
        /// Ancho.
        /// </summary>
        public int Ancho
        {
            get;
            private set;
        }

        /// <summary>
        /// Largo.
        /// </summary>
        public int Largo
        {
            get;
            private set;
        }

        /// <summary>
        /// Constructor del rectangulo.
        /// </summary>
        /// <param name="ancho">Ancho.</param>
        /// <param name="largo">Largo.</param>
        public Rectangulo(int ancho, int largo) : base(4)
        {
            this.Ancho = ancho;
            this.Largo = largo;
        }

        /// <summary>
        /// Calcula el area del rectangulo.
        /// </summary>
        /// <returns>Area</returns>
        public override double CalcularArea()
        {
            return Ancho * Largo;
        }
    }
}