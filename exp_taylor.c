#include <stdio.h>

double exp_taylor(double x, int terms) {
    double result = 1.0;
    double term = 1.0;
    for (int i = 1; i < terms; ++i) {
        term *= x / i;
        result += term;
    }
    return result;
}

int main() {
    double x = 1.0;
    int terms = 20;
    printf("e^%.2f ≈ %.10f\n", x, exp_taylor(x, terms));
    return 0;
}

