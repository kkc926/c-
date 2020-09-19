#include<stdio.h>

main()
{
	int i;
	scanf("%d", &i);
	puts(i >= 90 && i <= 100 ? "A" : i >= 80 && i <= 89 ? "B" : i >= 70 && i <= 79 ? "C" : i >= 60 && i <= 69 ? "D" : "F");
}