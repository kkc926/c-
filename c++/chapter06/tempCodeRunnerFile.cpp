#include <vector>
#include <iostream>
#include <string>
using namespace std;

class Circle
{
public:
    int x, y;
    int radius;

    Circle() : x(0), y(0), radius(0) {}
    Circle(int x, int y, int r) : x(x), y(y), radius(r) {}
    void print()
    {
        cout << "반지름 : " << radius << " @(" << x << "," << y << ")" << endl;
    }
};

int main(int argc, char const *argv[])
{
    vector<Circle> objArray;

    for (int i = 0; i < 10; i++)
    {
        Circle obj{rand() % 300, rand() % 300, rand() % 100};
        objArray.push_back(obj);
    }
    for (auto &c : objArray)
    {
        c.print();
    }
    return 0;
}