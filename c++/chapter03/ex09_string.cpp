#include<iostream>
#include<string>
using namespace std;
int main(int argc, char const *argv[]){
   string s= "When in Rome, do as Romans.";
//읽기
   for ( auto& ch : s ){ //char &ch = s[i]
       cout << ch << ' ';

   }
   cout << endl;

   for ( auto ch : s ){ //char ch = s[i]
       cout << ch << ' ';
 ///////////////////참조, 복사 둘다 읽기에서는 차이가 없음.
   }
   cout << endl;
//쓰기
   for (auto& ch : s){ //char &ch = s[i]
       ch = 'T';
   }
   cout << s << endl;

   cout << endl;

   for (auto ch : s){ //char ch = s[i]
       ch = 'W';

   }
   cout << s << endl;
   

   return 0;
}