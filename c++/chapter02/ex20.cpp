#include<iostream>
using namespace std;
int main(int argc, char const *argv[]){
   int list[]={1,2,3,4,5,6,7,8,9,10};
int list2[10];
// list2 = list 문법에러, =연산자로 배열의 값이 복사되지 않음

//배열의 크기 계산 방법
int length = sizeof(list)/sizeof(int); //40/4=>10
//해당함수의 크기를 바이트로 알려줌
// list의 메모리 크기 : int 크기(4)*10개 --> 40바이트
cout << length;

///복사전 list2 출력
for (auto &i : list2){
    cout << i << " "; //초기화되지않은 변수를 읽었을때

}
cout << endl;

// list의 값을 list2로 복사 해보세요.
for (int i =0; i <length; i++){
list2[i]=list[i]; //list2=list가 불가능하므로 각각의 값을 복사해야함
}
//복사된 list2를 출력하세요.

for (int &i : list2){
    cout <<i<<" ";
}
cout << endl;

cout << list << endl; //배열명을 프린트하면 배열의 시작 주소가 나옴.



   return 0;
}