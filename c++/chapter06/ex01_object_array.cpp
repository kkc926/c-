#include <iostream>
#include <string>
using namespace std;

class Circle
{
public:
    int x, y;
    int radius;

    Circle() : x(0), y(0), radius(0) {} //디폴트생성자를 반드시 정의하는 습관 들이기
    Circle(int x, int y, int r) : x(x), y(y), radius(r) {}
    void print()
    {
        cout << "반지름: " << radius << " @(" << x << "," << y << ")" << endl;
    }
};

int main()
{
    Circle objArray[10]; // 10개의 요소가 디폴트 생성자에 의해 생성
    for (Circle c : objArray){ //초기화가 어떻게 되었는지 확인
        c.print();
    }
    for (Circle &c : objArray)
    {
        c.x = rand() % 500;
        c.y = rand() % 300;
        c.radius = rand() % 100;
    }
    for (Circle c : objArray)
    {
        c.print();
    }
    cout << "-----------" << endl;
    cout << "Circle memory size : "<< sizeof(Circle)<<endl;//Circle 인스턴스 크기
    cout << "array length : "<<sizeof(objArray)<<sizeof(Circle)<<endl;//배열의 길이

    return 0;
}