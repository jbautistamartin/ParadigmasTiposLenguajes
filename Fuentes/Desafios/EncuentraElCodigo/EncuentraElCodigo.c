#include <stdio.h>
#include <stdbool.h>

/*
¿Puedes descifrar el codigo?
_ _ _
682: Un número es correcto y en su posición correcta.
614: Un número es correcto pero mal posicionado.
206: Dos números son correctos peros su posición no.
738: Nada es correcto.
780: Un número es correcto pero mal posicionado.
*/

/*
El resultado 042 cumple todas las reglas.
El resultado 062 tambien las cumple, de forma no excluyente.
*/

const int X = -1; // Constante para cualquier numero

//Valida que una matroz contenga alguno de los numeros indicados
bool validar(int validos[][3], int filas, int x, int y, int z);

// 682: Un número es correcto y en su posición correcta.
bool regla1(int x, int y, int z)
{
	int validos[3][3] = {
		{ 6, X, X },
		{ X, 8, X },
		{ X, X, 2 }
	};

	return validar(validos, 3, x, y, z);
}

// 614: Un número es correcto pero mal posicionado.
bool regla2(int x, int y, int z)
{
	int validos[6][3] = {
		{ X, 6, X },
		{ X, X, 6 },
		{ 1, X, X },
		{ X, X, 1 },
		{ 4, X, X },
		{ X, 4, X }
	};

	return validar(validos, 6, x, y, z);
}

// 206: Dos números son correctos peros su posición no
bool regla3(int x, int y, int z)
{
	int validos1[2][3] = {
		{ X, 2, X },
		{ X, X, 2 },
	};

	int validos2[2][3] = {
		{ 0, X, X },
		{ X, X, 0 },
	};

	int validos3[2][3] = {
		{ 6, X, X },
		{ X, 6, X },
	};

	bool valido = 
		(validar(validos1, 2, x, y, z) 
			&& validar(validos2, 2, x, y, z)) ||
		(validar(validos1, 2, x, y, z) 
			&& validar(validos3, 2, x, y, z)) ||
		(validar(validos2, 2, x, y, z) 
			&& validar(validos3, 2, x, y, z));

	return valido;
}

//  706: Nada es correcto.
bool regla4(int x, int y, int z)
{
	int invalidos[] = { 7, 3, 8 };
	int valores[] = { x, y, z };

	for (int i = 0; i < 3; i++)
		for (int j = 0; j < 3; j++)
			if (invalidos[i] == valores[j])
				return false;

	return true;

}

// 780: Un número es correcto pero mal posicionado
bool regla5(int x, int y, int z)
{
	int validos[6][3] = {
		{ X, 7, X },
		{ X, X, 7 },
		{ 8, X, X },
		{ X, X, 8 },
		{ 0, X, X },
		{ X, 0, X }
	};

	return validar(validos, 6, x, y, z);
}

bool codigo(int x, int y, int z)
{
	return regla1(x, y, z) &&
		regla2(x, y, z) &&
		regla3(x, y, z) &&
		regla4(x, y, z) &&
		regla5(x, y, z);

}

bool validar(int validos[][3], int filas, int x, int y, int z)
{
	//Veo si alguna fila es valida
	for (int i = 0; i < filas; i++)
	{
		bool valido = 
			(validos[i][0] == X 
				|| validos[i][0] == x) &&
			(validos[i][1] == X 
				|| validos[i][1] == y) &&
			(validos[i][2] == X 
				|| validos[i][2] == z);

		if (valido) return true;

	}

	// Ninguna es valida
	return false;
}


int main(void)
{
	const int MAX_POSIBLES = 8;

	// Genero los posibles resultados,segun las pistas, deben ser
	// 0,1,2,3,4,6,7,8 (curiosamente no esta el 5, ni el 9)

	int posibles[] = { 0, 1, 2, 3, 4, 6, 7, 8 };

	// Recorro todas las posibles soluciones y veo las que tengan exito
	for (int i = 0; i < MAX_POSIBLES; i++)
		for (int j = 0; j < MAX_POSIBLES; j++)
			for (int k = 0; k < MAX_POSIBLES; k++)
				if (codigo(i, j, k))
					printf("[%d %d %d] ", i, j, k);

	return 0;
}