#include <iostream>

double exp_taylor(double x, int TERMS) {
    double result = 1.0;
    double term = 1.0;

    for (int i = 1; i < TERMS; ++i) {
        term = term * x / i;
        result += term;
    }

    return result;
}

int main() {
    double x = 2.3;
    int terms = 20;

    std::cout << exp_taylor(x, terms) << std::endl;
    return 0;
}

