#include<stdio.h>


main()
{
	int x[100];
	int y[100];
	int k;
	scanf("%d", &k);
	for (int i = 0; i < k; i++)
	{
		scanf("%d %d", &x[i], &y[i]);	
	}
	for (int i = 0; i < k; i++)
	{
		printf("%d\n", x[i] + y[i]);
	}
	
}