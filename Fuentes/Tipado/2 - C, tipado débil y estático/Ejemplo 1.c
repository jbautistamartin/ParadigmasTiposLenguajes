int main()
{
    int a=120;
    //Imprimo a como un numero, es valor es 120;
    printf ("El valor de a es '%d' \n",a);
    
    //imprimo a como un float se imprime un valor
    //pero no es 120,y no hay ningun fallo
    printf ("El valor de a es '%f'\n",a);
    
    //Lego el valor de a del teclado como cadena de texto
    printf ("Introducta el valor de a: ");
    scanf("%s",&a);
    printf ("El valor de a es '%d' \n",a);
	
	/*
	* La salida del código es:
	* El valor de a es '120'                                                                                                         
	* El valor de a es '0.000000'                                                                                                    
	* Introduzca el valor de a: hola                                                                                                 
	* El valor de a es '1634496360'  
	*/
    
}

