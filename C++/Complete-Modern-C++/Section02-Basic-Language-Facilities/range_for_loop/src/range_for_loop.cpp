#include <iostream>

int main(){

    using namespace std;

    int arr[] = {1,2,4,8};

    for (int i=0;i<4;i++){
        cout<<arr[i]<<endl;
    }
    cout<<endl;
    for(int x:arr){
        cout<<x<<endl;
    }
    cout<<endl;
    for(auto x:arr){
        cout<<x<<endl;
        x+=1;
    }
    cout<<endl;
    for(auto &x:arr){
        cout<<x<<endl;
        x+=1;
    }
    cout<<endl;
    for(auto &x:arr){
        cout<<x<<endl;
        x+=1;
    }
    cout<<endl;
    auto &&range = arr;
    auto begin = std::begin(arr);
    auto end = std::end(arr);

    for(; begin!=end; begin++){

        auto v = *begin;
        cout<<v<<endl;
    }



    return 0;
}