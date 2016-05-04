/*
	vinicius.eickhoff@pucrs.acad.br
*/


#include <stdio.h>

#include "s.h"


int main()
{
	float a, b, r;

	printf("Digite um numero:\n");
	scanf("%f", &a);
	
	printf("Digite outro numero:\n");
	scanf("%f",&b);

	r = somar(a, b);
	
	printf("Resultado=%.2f\n", r);

return 0;
}

