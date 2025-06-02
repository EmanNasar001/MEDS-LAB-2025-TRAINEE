#include <stdio.h>
#include <math.h> 
int main() {
    double y;
    printf("Enter the value of y: ");
    scanf("%lf", &y);

    double result = exp(y);
    printf("e^%.2f ≈ %.10f\n", y, result);

    return 0;
}
double fact(int z) {
    if (z <= 1)
        return 1;
    else
        return z * fact(z - 1);
}

// Function to calculate exponential of y
double exp(double y) {
    int n = 50;
    double exp = 0.0;

    for (int i = 0; i <= n; i++) {        
        
        double m = pow(y, i) / fact(i);

        exp += m;
    }

    return exp;
}