#include<stdio.h>

int main() {
	int a = 0, b = 0;

	scanf("%d %d\n", &a, &b);

	int c[a];

	for (int i = 0; i < a; i++) {
		scanf("%d", &c[i]);
	}

	for (int k = 0; k < a; k++) {
		if (c[k] < b) {
			printf("%d ", c[k]);
		}
	}
	return 0;
}