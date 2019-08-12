namespace DesdeLasHorasExtras.EjemploPoligonos
{
    /// <summary>
    /// Representa un poligo, un poligono es una idea abstracta, hasta que no tiene lados y angulos, no es realmente un poligono.
    /// </summary>
    internal abstract class Poligono
    {
        /// <summary>
        /// Numero de lados del poligono.
        /// </summary>
        public int Lados
        {
            get;
            private set;
        }

        /// <summary>
        /// Constructor del poligono.
        /// </summary>
        /// <param name="lados">Numero de lados</param>
        public Poligono(int lados)
        {
            this.Lados = lados;
        }

        /// <summary>
        /// Calcula la area, es una funcion abstracta, segun la figura la area se calcula de forma diferente.
        /// </summary>
        /// <returns>Area.</returns>
        public abstract double CalcularArea();
    }
}