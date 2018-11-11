#include "my_class.h" 
// 重载函数 
static void printMsg (int i) 
{ 
	std::cout << i << std::endl; 
}

void MyClass::printMsg (void) 
{ 
	std::cout << "I'M MyClass!" << std::endl; 
}
