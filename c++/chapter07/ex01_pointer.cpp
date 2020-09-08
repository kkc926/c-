#include<iostream>
#include<string>
using namespace std;
int main(int argc, char const *argv[]){
   int number = 0;
   int *p = &number;  //p변수는 number와 같이 int 여야한다. 다르면 에러

   cout << p << endl;
   cout << sizeof(p) << endl;
   cout << *p << endl;

   
    int *pNumber=&number;
    cout << *pNumber;
   return 0;
}