#include <iostream>
#include <cmath>
using namespace std;

double risolvi_eq2(double a, double b, double c) {
  double d = b * b - 4 * a * c;
  if (d >= 0) {
    return (-b + sqrt(d)) / 2;
  }
  cout << "IMPOSSIBILE\n";
  
  return 0;
}
int main() {
  cout << risolvi_eq2(1, 2, 1) << endl;
  cout << risolvi_eq2(1, -2, 1) << endl;
  cout << risolvi_eq2(1, 0, 1) << endl;

  return 0;
}