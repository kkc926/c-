#include<iostream>
#include<string>
using namespace std;


class Dog{
    public:
    int age;
    string name;

    Dog(){ //생성자 호출
        cout << "Dog 생성자 호출" <<endl;
        age = 1;
        name = "바둑이";
    }

    ~Dog(){ // 소멸자 호출
        cout << "Dog 소멸자 호출"<<endl;
    }
};
int main(int argc, char const *argv[]){
  Dog *pDog= new Dog;
  
//   delete pDog;

   return 0;
}