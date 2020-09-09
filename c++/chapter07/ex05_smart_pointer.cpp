#include <iostream>
#include <string>
#include <memory>
using namespace std;
int main(int argc, char const *argv[])
{

    unique_ptr<int[]> buf(new int[10]); // buf 버퍼, 임시데이터 저장공간을 말함
    // unique_ptr<int[]> buf =  new int[10];//에러(대입연산 아님)
    for (int i = 0; i < 10; i++)
    {
        buf[i] = i; //*(buf+i)=i 와동일
    }
    for (int i = 0; i < 10; i++)
    {
        cout << buf[i] << " ";
    }
    cout << endl;
    return 0;
}

//##########일반 포인터로 바꿔보기
