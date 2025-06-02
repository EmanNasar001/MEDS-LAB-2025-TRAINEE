#include <stdio.h>
double my_sqrt(int x) {
    if (x < 0) {
        printf("Sqrt of negative values is not allowed\n");
        return -1;  
    }

    if (x < 2) {
        return x;
    }

    double left = 0.0, right = (double)x, mid;

    while ((right - left) > 1e-3) {
        mid = (left + right) / 2.0;
        if (mid * mid > x) {
            right = mid;
        } else {
            left = mid;
        }
    }

    return ((int)(left * 1000 + 0.5)) / 1000.0;
}

int main() {
    double result = my_sqrt(7);
    printf("Square root of 7 ≈ %.3f\n", result);
    return 0;
}
