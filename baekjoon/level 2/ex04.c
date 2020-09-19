#include<stdio.h>


main(x, y)
{
	scanf("%d %d", &x, &y);
	puts(x > 0 && y > 0 ? "1" : x < 0 && y>0 ? "2" : x < 0 && y < 0 ? "3" :"4");
}
