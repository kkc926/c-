#include <iostream>
#include <string>
using namespace std;
class Dog
{
private:
    int *pAge;
    int *pWeight;

public:
    Dog()
    {
        pAge = new int{1};     //배열을 동적으로 만듬
        pWeight = new int{10}; //배열을 동적으로 만듬
    }
    ~Dog()
    {
        delete pAge;
        delete pWeight;
    }
    int getAge() { return *pAge; }
    void setAge(int a) { *pAge = a; }// pAge가 가리키는 값에 a를 대입
    int getWeight() { return *pWeight; }
    void setWeight(int w) { *pWeight = w; }
};

int main()
{
    Dog *pDog = new Dog; //포인터 변수의 크기는 8바이트(64비트 컴퓨터에서)
    cout << sizeof(*pDog);// 2개의 인스턴스가있음, 따라서 pDog가 포인트하는 인스턴스의 크기는 16이다
    cout << "강아지의 나이: " << pDog->getAge() << endl;
    cout << "강아지의 무게: " << pDog->getWeight() << endl;
    pDog->setAge(3);
    pDog->setWeight(20);
    cout << "강아지의 나이: " << pDog->getAge() << endl;
    cout << "강아지의 무게: " << pDog->getWeight() << endl;
    delete pDog;
    return 0;
}