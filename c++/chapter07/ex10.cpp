#include<iostream>
#include<string>
using namespace std;

void print(string t){
    cout << t << endl;
}
void print(const char *t){ //*t='a'; 안한다 const니 쓰기 불가

    cout << t << endl;
}
///문자열을 나타내는 방법 3가지
int main(int argc, char const *argv[]){
   char test[]="HELLO";// 문자열 배열
   char *pstr="C++"; // 문자열 포인터
   string str= "World";//스트링 객체

   cout <<test <<endl;
   cout <<pstr <<endl;
   cout <<str <<endl; 
   cout <<sizeof(str) <<endl; // 항상 32바이트 
   print(test);
   print(pstr);
   print(str);
   print(str.c_str());// const char * 리턴

   return 0;
}