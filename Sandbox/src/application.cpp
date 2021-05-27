#include <iostream>

namespace XME
{
    void Print();
} // namespace XME


int main()
{
    XME::Print();
    printf("\n");

    //print all chars
    for(int i = 33; i < 127; i++) {
        printf("%c", (char)i);
    }

    std::cout << std::endl;
    
    //print sizes
    std::cout << "unsigned long long:\t" << sizeof(unsigned long long) << std::endl;
    std::cout << "size_t:\t"             << sizeof(size_t)             << std::endl;
    std::cout << "int:\t"                << sizeof(int)                << std::endl;
    std::cout << "char:\t"               << sizeof(char)               << std::endl;
}