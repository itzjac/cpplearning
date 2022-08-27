// $(C) Copyright by TheByteCave Inc., 2022 All Rights Reserved. $
// $Creator: Dagon Meister $
// $File: C:\projects\asm\code\helloasm.cpp $
#include <iostream>

extern "C" int SomeFunction();
extern "C" int AddSubTestFunction();

int main()
{
    // NOTE(dagonmeister): x86 inline assembly
    /*int i =0;
    _asm
    {
        mov i, 28398
    }
    std::cout<<" The result is: " << i << std::endl;
    */
    // NOTE(dagonmeister): x64 assembly, more registers, more memory
    int a = SomeFunction();
    std::cout<<" The result is: " << a <<std::endl;
    std::cout<<" Arithmetic " << AddSubTestFunction() << std::endl;
    
    return 0;
}