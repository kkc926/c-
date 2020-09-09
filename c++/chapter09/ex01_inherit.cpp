#include <iostream>
#include <string>
using namespace std;
class Shape //// :public object() 가 생략됨// object는 최상위클래스로써 항상 포함되어있음.
{
    int x, y;

public:
    Shape()
    {
        cout << "Shape() 생성자" << endl;
    }
    Shape(int xloc, int yloc) : x(xloc), y(yloc)
    {
        cout << "Shape(xloc, yloc) 생성자" << endl;
    }
    ~Shape()
    {
        cout << "~Shape() 소멸자" << endl;
    }
};
class Rectangle : public Shape
{
    int width, height;

public:
    Rectangle() //// : 없음없음 이면 뒤에 디폴트 생산자 shape()가 자동으로 추가되어있음 //생성자 정의법 1 ///부모클래스에 디폴트 생성자가 있어야 사용가능 Shape() {cout << "Shape() 생성자" << endl;}
    {
        cout << "Rectangle() 생성자" << endl;
    }
    Rectangle(int x, int y, int w, int h) : Shape(x, y), width(w), height(h) //상속받은 x,y 초기화, 본인꺼 w,h 초기화 //생성자 정의법 2
    {
        cout << "Rectangle(x, y, w, h) 생성자" << endl;
    }
    ~Rectangle()
    {
        cout << "~Rectangle() 소멸자" << endl;
    }
};

int main(int argc, char const *argv[])
{
    Rectangle r1;
    cout << endl;
    Rectangle r2(0, 0, 100, 100);
    cout << endl;
    return 0;
}
