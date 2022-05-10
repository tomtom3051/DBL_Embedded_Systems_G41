/**
 * main.cpp
 * 2022-05-09
 * DBL Embedded Systems G41
 *
 * Authors:
 * 	Niels Nieuwenhuizen, 1662066
**/

#include <iostream>

#include <pigpio.h>

#include "foo.h"

int main() {
	Foo bar;
	std::cout << "Foo::add(1,2) = " << bar.add(1,2) << "\n";

	gpioInitialise();
	gpioSetMode(6, PI_OUTPUT);
	while(1) {
		gpioDelay(100000);
		gpioWrite(6, 1);
		gpioDelay(100000);
		gpioWrite(6, 0);
	}

	return 0;
}
