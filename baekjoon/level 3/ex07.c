#include<stdio.h>

main(a,b,n)
{

	scanf("%d", &n);

	for (int i = 1; i <= n; i++)
	{
		scanf("%d %d", &a, &b);
		printf("Case #%d: %d\n",i, a+b);
	}
}