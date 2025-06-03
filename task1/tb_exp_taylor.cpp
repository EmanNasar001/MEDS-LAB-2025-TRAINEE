#include "Vexp_taylor_simple.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Vexp_taylor_simple* dut = new Vexp_taylor_simple();

    for (int y_val = 0; y_val <= 10; ++y_val) {
        dut->y = y_val;
        dut->eval();

        std::cout << "e^" << std::setw(2) << y_val
                  << " ≈ " << std::setw(8) << dut->exp_out << std::endl;
    }

    delete dut;
    return 0;
}
