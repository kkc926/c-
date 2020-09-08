#include <iostream>
using namespace std;

class Time
{
public:
    int hour;
    int minute;


    Time(){
        hour=0;
        minute=0;
     } //디폴트 생성자
    //생성자 오버로드
    Time(int h, int m)
    {
        hour = h;
        minute = m;
    }

    void print()
    {
        cout << hour << ':' << minute << endl;
    }
    void printTime(Time t){ //Time &t, Time *t 밸류,참조,어드레스
    {
        cout << "Time => " << t.hour << ':' << t.minute << endl;
    }
};

int main()
{
    Time a; //디폴트 생성자를 사용
    Time b(10, 25);
    Time c{10, 25};
    
    c=b; //? 복사인가 참조인가 
    c.hour=3;

    printTime(b);
    printTime(c);
    b.print();
    c.print();//같은값이면 참조, 다른값이면 복사본 -->정적할당에서 대입연산은 c++은복사 , 파이썬은 참조임
    
    return 0;

}