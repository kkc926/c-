#include<stdio.h>

main()
{
	int i, j;


	scanf("%d %d", &i,&j);

	if (i>j)
	{
		printf(">");

	}
	else if (i<j)
	{
		printf("<");

	}
	else if (i==j)
	{
		printf("==");
	}

}