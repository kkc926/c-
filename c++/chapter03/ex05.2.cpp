#include<iostream>
using namespace std;

void initArray(int array[], int size, int value = 0){
  

    for (int i=0; i <size  ; i++){
        array[i]=value;
    }


}

void printArray(int array[] ,int size){
    //int size = sizeof(array)/sizeof(int); //배열의 길이 구하기

    for (int i=0; i <size  ; i++){
        cout << array[i] << ", ";
    }
    cout << endl;
}

int main(int argc, char const *argv[]){
    const int ARRAY_SIZE = 40;
    int intList[ARRAY_SIZE];
    

    initArray(intList,ARRAY_SIZE, 100); //100으로 초기화 하고싶다.
    printArray(intList, ARRAY_SIZE);
    initArray(intList,ARRAY_SIZE); // 0으로 초기화 하고싶다.
    printArray(intList, ARRAY_SIZE);
   return 0;
}