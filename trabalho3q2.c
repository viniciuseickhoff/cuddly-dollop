#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define E 5.0f
float fahr2cel(float f)
{
	float c;
	c = 5.0 / 9.0 * ( f - 32.0 );

	if (fabsl(c) <= E)
		printf("Ponto de congelamento da água\n");
	else if (fabsl(c - 100.0f) <= E)
		printf("Ponto de ebulição da água\n");
	else if (fabsl(c + 273.0f) <= E)
		printf("Zero absoluto\n");
	return c;
}

int main()
{
	float tf, tc;

	
	tf = 451;

	tc = fahr2cel(tf);
		
	// 451 Degree Fahrenheit = 232.777778 Celsius
	printf("%fF = %fC\n", tf, tc);

	return EXIT_SUCCESS;
}
