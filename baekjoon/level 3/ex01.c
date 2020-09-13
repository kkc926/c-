#include<stdio.h>


main(i, j,x)
{

	scanf("%d", &x);
	for (i = 1; i < 10; i++)
	{
		printf("%d * %d = %d\n", x, i, x * i);
	}
}
