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
    
    Time(int h, int m)//생성자 오버로드
    {
        hour = h;
        minute = m;
    }

    void print()
    {
        cout << hour << ':' << minute << endl;
    }
};

int main()
{
    Time a; //디폴트 생성자를 사용
    Time b(10, 25);
    Time c{10, 25};
    Time d = {10, 25};

    b.print();
    c.print();
    d.print();
    return 0;
}