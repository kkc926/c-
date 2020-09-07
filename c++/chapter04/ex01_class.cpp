#include<iostream>
#include<string>
using namespace std;

class Circle{
    public:
    int radius; //반지름
    public:
    string color; //색상
    public: //각 객체별로 사용가능
    double calcArea(){     //python과 달리 self 매개 변수 없음.
        return 3.14 *radius * radius; // 멤버 변수 접근시 바로사용
    }
};
int main(int argc, char const *argv[]){
   Circle obj; //객체생성
   obj.radius = 100; 
   obj.color = "blue";
//    obj.area = 40; //에러 -- 동적으로 멤버추가 불가 (파이썬은 가능)

   cout <<"원의면적 " << obj.calcArea()<<endl;
   return 0;
}