#include<stdio.h>
int main() {
	int a, b, c;
	scanf("%d %d", &a, &b);
	c = a * 60 + b - 45;
	if (c < 0)
	{
		c += 24 * 60;
	}
	a = c / 60;
	b = c % 60;
	printf("%d %d", a, b);
	return 0;
}