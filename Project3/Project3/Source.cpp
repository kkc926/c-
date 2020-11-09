#include<iostream>

using namespace std;

int main()
{
	int a, b,num_1,num_10,num_100;
	cin >> a >> b;

	num_1 = b % 10;
	num_10 = (b % 100 - num_1);
	num_100 = (b - num_10 - num_1);

	cout << num_1 << " " << num_10 << " " << num_100 << endl;

	cout << a * num_1 << endl;
	cout <<(a * num_10)/10  <<endl;
	cout << (a * num_100)/100 << endl;
	cout << a * num_1+ (a * num_10)+ (a * num_100) << endl;




	return 0;
}