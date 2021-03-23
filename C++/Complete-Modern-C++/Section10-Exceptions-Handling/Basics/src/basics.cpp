#include <iostream>
#include <limits>
#include <memory>
#include <vector>
class Test
{
public:
    Test()
    {
        std::cout << "Test()" << std::endl;
    };
    ~Test()
    {
        std::cout << "~Test()" << std::endl;
    }
};

void foo(int size)
{
    Test t;
    Test *p_t = new Test;
    std::unique_ptr<Test> unique_t(new Test);
    if (size < 10)
        throw std::out_of_range("out_of_range: Size is out of range");
    //int *p = new int[size];
    int *ptr = (int *)malloc(size * sizeof(int));
    if (ptr == nullptr)
    {
        //std::cout<<"nullptr"<<std::endl;
        throw std::runtime_error("runtime_error: Failed to allocate memory.");
        std::cout << "after runtime error ?" << std::endl;
    }
    for (int i = 0; i < size; i++)
    {
        ptr[0] = i;
    }
};


void nested_try(){
std::vector<int> vec;
    vec.resize(30);
    int count = 0;

    for (int i = 0; i < vec.size(); i++)
    {
        try
        {
            if (i % 2 == 0)
            {
                count++;
                std::cout<<"ERROR: even number"<<std::endl;
                throw std::out_of_range("even number");
            }
            else
            {   
                std::cout<<"Assignement successful !"<<std::endl;
                vec[i] = i;
            }
        }
        catch (std::out_of_range &ex)
        {
            if(count>10){
                std::cout<<"more than 10 even numbers, operation abandonned"<<std::endl;
                std::cout<<ex.what()<<std::endl;
                std::out_of_range err("additionnal info on error");
                ex = err;
                throw;
            }
        }
    }
}

int main()
{

    try
    {
        //foo(3);
        foo(std::numeric_limits<int>::max());
    }
    catch (std::runtime_error &ex)
    {
        std::cout << ex.what() << std::endl;
    }
    catch (std::out_of_range &ex)
    {
        std::cout << ex.what() << std::endl;
    }
    catch (std::bad_alloc &ex)
    {
        std::cout << ex.what() << std::endl;
    }

    catch (std::exception &ex)
    {
        std::cout << ex.what() << std::endl;
    }

    catch (...)
    {
        std::cout << "ellipse exception" << std::endl;
    }
    int a = 7;

    std::cout << "program completed" << a << std::endl;

    try{
        nested_try();
    }catch (std::out_of_range &ex){
        std::cout<<ex.what()<<std::endl;
    }

    return 0;
}