#include<iostream>
#include<string>
using namespace std;
void f(int i) { 
    cout << "f(int)" << endl;
}
void f(char *p){
    cout << "f(char *)"<<endl;

}
int main(int argc, char const *argv[]){
    int *pNumber=NULL;//권장
    int *pNumber2;//비권장


    if (pNumber != NULL){  //초기값이 없으면 실행하지 말것
        cout <<*pNumber<<endl;
    }

    if (pNumber2 != NULL){ //?????????? 뭐가 나올지 모름 항상바뀜
        cout <<*pNumber2<<endl;
    }



   //f(NULL); -- int,char *  둘다 가능하므로 에러
   f(nullptr); //포인터널이므로 아래함수가 호출된다.
   f(0);// 숫자으므로 위의 함수가 호출된다.
   return 0;
}