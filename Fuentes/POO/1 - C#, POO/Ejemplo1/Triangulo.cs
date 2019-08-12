namespace DesdeLasHorasExtras.EjemploPoligonos
{
    /// <summary>
    /// Representa un triangulo, un triangulo tiene base y altura.
    /// </summary>
    internal class Triangulo : Poligono
    {
        /// <summary>
        /// Base del triangulo.
        /// </summary>
        public int Base
        {
            get;
            private set;
        }

        /// <summary>
        /// Altura del triangulo.
        /// </summary>
        public int Altura
        {
            get;
            private set;
        }

        /// <summary>
        /// Contructor del triangulo.
        /// </summary>
        /// <param name="tamanoBase">Tamaño de la base.</param>
        /// <param name="altura">Altura.</param>
        public Triangulo(int tamanoBase, int altura) : base(3)
        {
            this.Base = tamanoBase;
            this.Altura = altura;
        }

        /// <summary>
        /// Calcula el area del triangulo.
        /// </summary>
        /// <returns>Area.<returns>
        public override double CalcularArea()
        {
            return (Base * Altura) / 2;
        }
    }
}