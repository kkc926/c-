#include<stdio.h>

main(b, n)
{
	int a = '*';
	scanf("%d", &n);

	for (int i = 1; i <= n; i++, printf("\n"))
	{
		for (int k = n; k >i; k--,printf(" "));
		for (int j = 1; j <= i; j++, printf("%c", a));

	
	}
}