#include<stdio.h>

main()
{
	int x;
	int a;
	int b;

	scanf("%d",&x);

	for (int i = 0; i < x; i++)
	{
		scanf("%d %d", &a, &b);
		printf("%d\n", a+ b);
	}	
}