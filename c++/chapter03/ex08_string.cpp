#include <iostream>
#include <string>
using namespace std;
int main(int argc, char const *argv[])
{
    string s = "When in Rome, do as the Romans.";
    int size = s.size();
    int index = s.find("Rome");
    cout << size << endl;
    cout << index << endl;

    cout << sizeof(s) << endl; //?

    s.insert(0, "Hello !! "); //맨 앞에 문자열 추가
    cout << s << endl;

    s += " End of World"; ///맨 뒤에 문자열 추가
    //s=s+"End of World";
    cout << s << endl;
    s.append("\n-----------------------\n"); // 맨뒤에 문자열 추가
    cout << s;
    return 0;
}