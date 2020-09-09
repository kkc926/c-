#include<iostream>
#include<string>
#include <time.h>
using namespace std;
int main(int argc, char const *argv[]){
   int *ptr = new int;

   *ptr = 99; // ptr=99 ptr의 값을 99로 저장해라 ptr의 주소값 99를 넣어라 / *ptr=99 ptr이 가리키는 곳에 데이터로 99를 넣기
   return 0;
}////////생성만 하면 가비지가 생성됨.