/**
 * main.cpp
 * 2022-05-09
 * DBL Embedded Systems G41
 *
 * Authors:
 * 	Niels Nieuwenhuizen, 1662066
**/

#include <iostream>

#include "foo.h"

int main() {
	Foo bar;

	std::cout << "hello world! :D\n";

	std::cout << "Foo::add(1,2) = " << bar.add(1,2) << "\n";

	return 0;
}
