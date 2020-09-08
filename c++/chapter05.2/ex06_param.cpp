#include<iostream>
#include<string>
using namespace std;
class Pizza{
    public:
    int size;
    Pizza(int s) : size(s){}
};
void makeDouble(Pizza &p){ //원본이 수정됨
    p.size *=2;
}

int main(int argc, char const *argv[]){
   Pizza pizza(10);
   makeDouble(pizza);
   cout <<pizza.size<<"인치피자"<<endl;
   return 0;
}