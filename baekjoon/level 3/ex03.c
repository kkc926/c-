#include<stdio.h>

main(n,i)
{
	int hap = 0;
	scanf("%d", &n);
	for (i = 1; i <= n; i++)
	{
		
		hap +=i;

	}
	printf("%d", hap);
}