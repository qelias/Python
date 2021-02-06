#include <iostream>

namespace Namespace1 {

    float Calculate(float x, float y){

        return (x + y)/2;
    }

}

namespace Namespace2 {

    float Calculate(float x, float y){

        return (x + y);
    }
}


int main(){
    //using namespace Namespace1;
    std::cout<<Namespace1::Calculate(1,5)<<std::endl;
    std::cout<<Namespace2::Calculate(1,5)<<std::endl;
    return 0;
}