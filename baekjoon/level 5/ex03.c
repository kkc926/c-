#include<stdio.h>

main()
{
	int a = 1; int b = 1; int c = 1;
	int num;
	int i = 0;

	scanf("%d", &num);
	int num1 = num;
	do
	{	b = num1 / 10;
		a = num1 % 10;	
		c = (a + b)%10;
		a = a * 10;
		num1 = a + c;
		i++;	
	} while (num != num1);
	printf("%d", i);
}