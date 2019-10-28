#include <stdio.h> 
 
int main () 
{  
    int n=5, fact=1;

    for (int c = n; c >= 1; c--) {
    
        fact = fact * c;
    }
   
    printf ("Factorial= %d\n", fact);
   
    return 0;

}