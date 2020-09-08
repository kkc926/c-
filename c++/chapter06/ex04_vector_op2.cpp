#include<vector>
#include<iostream>
#include<string>
using namespace std;
int main(int argc, char const *argv[]){
   vector<int> v;
   for (int i=0; i<10; i++){
       v.push_back(i);
   }

   for (auto& e:v){
       cout << e << ',';
   }
   cout << endl; 
   cout << "size : "<<v.size()<<endl;
   cout << "capacity : "<<v.capacity()<<endl;
  

   cout<< "삭제" << endl;

   while(v.empty() !=true){
       cout << v.back() << " ";
       v.pop_back();
   }

   cout << endl;

   cout << "size : "<<v.size()<<endl;
   cout << "capacity : "<<v.capacity()<<endl;
   return 0;
}