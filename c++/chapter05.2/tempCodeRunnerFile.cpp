#include <iostream>
#include <string>
using namespace std;

class Pizza
{
public:
    int size;
    Pizza(int s) : size(s){}
};


Pizza &makePizza()
{
    Pizza p(10);
    return p;//정적할당된 데이터는 함수가 끝나면 원본에서 사라진다 따라서 참조가 불가능함.
}

int main(int argc, char const *argv[])
{
    Pizza &pizza = makePizza();
    cout << pizza.size << "인치피자" << endl;

    return 0;
}