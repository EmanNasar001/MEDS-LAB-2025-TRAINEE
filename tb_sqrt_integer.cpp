#include "Vsqrt_integer.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Vsqrt_integer* dut = new Vsqrt_integer();

    for (int x = 0; x <= 100; x += 5) {
        dut->x = x;
        dut->eval();

        std::cout << "sqrt(" << std::setw(3) << x << ") ≈ "
                  << std::setw(2) << dut->result << std::endl;
    }

    delete dut;
    return 0;
}
