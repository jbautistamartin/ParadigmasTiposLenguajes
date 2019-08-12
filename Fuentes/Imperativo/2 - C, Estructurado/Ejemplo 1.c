#include <stdio.h>
#include <stdbool.h>

int main() {

    char nombreUsuario[20];
    bool salir = false;
	
    printf("¿Cuál es su nombre? ");
    scanf("%[^\n]s", nombreUsuario);
    printf("Bievenido al 'asterisquero', %s", nombreUsuario);
	
    do {
        int nroAsteriscos = 0;
        printf("\n¿Cuántos asteriscos quieres [Cero sale]: ");
        scanf("%d", & nroAsteriscos);
		
        if (nroAsteriscos != 0) {
            
			printf("AQUI ESTAN: ");        
			for (int i = 0; i < nroAsteriscos; i++) {
                printf("*");
            }			
            printf("\n");
			
        } else {
			
            salir = true;
        }

    } while (!salir);

}