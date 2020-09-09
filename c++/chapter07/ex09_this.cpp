#include <iostream>
#include <string>
using namespace std;
class Rectangle
{
private:
    int length;
    int widht;

public:

// Rectangle(int length=30, int width=40): length (length),width(width){} 멤버초기화 리스트로 초기화하기
    Rectangle()
    {
        length = 30; 
        widht = 40;
        // Rectangle( int length =30,int width=40){//<== 매개변수로 전달받아 생성하는 함수
        //     this -> length = length;
        //     this-> width = width;
        // }
    }
    ~Rectangle() {}
    void setLength(int length) { this->length = length; }

    int getLength() { return this->length; }

    void setWidth(int widht) { this->widht = widht; }

    int getWidth() { return this->widht; }};

    int main()
    {
        Rectangle rect;
        cout << "사각형의 길이: " << rect.getLength() << endl;
        cout << "사각형의 너비: " << rect.getWidth() << endl;
        rect.setLength(20);
        rect.setWidth(10);
        cout << "사각형의 길이: " << rect.getLength() << endl;
        cout << "사각형의 너비: " << rect.getWidth() << endl;
        return 0;
    }
