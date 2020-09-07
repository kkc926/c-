#include "PrintData.hpp"  //검색순서 : ""는 현재 디렉토리를 찾고(src/include) 없으면 라이브러리 디렉토리 없으면 컴파일러 라이브러리 디렉토리
#include <iostream> //검색순서 : <>는 라이브러리디렉토리 컴파일러에있는 라이브러리 디렉토리에서 검색
#include <string>
//클래스 정의 파일


//함수 정의


void PrintData::print(int i){
    cout << i << endl;
}
void PrintData::print(double f){
    cout << f << endl;
}
void PrintData::print(string s){
    cout << s << endl;
}
