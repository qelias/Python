#include <iostream>
#include <fstream> 
#include <string>
#include <cstring>
#include <experimental/filesystem>

void Write(){
    std::ofstream out("data.txt");
    out<<"Hello Worllds"<<std::endl;
    out<<10<<std::endl;
    out.close();
}
void Read(){
    std::ifstream in("data.txt");
    if (!in.is_open() ){
        std::cout<<"Could not open file"<<std::endl;
        return;
    }

    std::string message;
    std::getline(in,message);
    int value{};
    in>>value;
    in>>value;
    if(in.eof()){
        std::cout<<"End of file reached"<<std::endl;
    }
    if(in.good()){
        std::cout<<"IO Successful"<<std::endl;
    }
    else{
        std::cout<<"Some IO failed"<<std::endl;
    }
    

    in.close();
    std::cout<<message<<":"<<value<<std::endl;


}


struct Record{
    int id;
    char name[10];
};
void WriteRecord(Record *p){
    std::ofstream binstream{"records",std::ios::binary | std::ios::out};
    binstream.write((const char*)p, sizeof(Record));
}
Record GetRecord(){
    std::ifstream input{"records",std::ios::binary | std::ios::in};
    Record r;
    input.read((char*)&r,sizeof(Record));
    return r;
}
int main(){

    using namespace std::experimental::filesystem;
    //Write();
    //Read();
    
    /*
    path source(current_path());
    source /= "source.cpp";
    path dest(current_path());
    dest /= "copy.cpp";

    std::ifstream input{source};
    if (!input){
        std::cout<<"Source file not found"<<std::endl;
        return -1;
    }
    std::ofstream output{dest};
    std::string line;
    while(std::getline(input, line).eof()){
        output<<line<<std::endl;
    }
    input.close();
    output.close();
    */


   std::ofstream textstream{"data"};
   textstream<<123456789;

   std::ofstream binstream {"binary",std::ios::binary | std::ios::out};
   int num{123456789};
   binstream.write((const char*)&num, sizeof(num));

binstream.close();
    num =0;
    
   std::ifstream input {"binary",std::ios::binary | std::ios::in};
   input.read((char*)&num,sizeof(num));
   std::cout<<num<<std::endl;

    Record r;
    r.id = 1101;
    strcpy(r.name,"Umar");
    WriteRecord(&r);

    Record r2 = GetRecord();
    std::cout<<r2.id<<":"<<r2.name<<std::endl;


    return 0;
}