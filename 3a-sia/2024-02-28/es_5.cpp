#include <iostream>
using namespace std;

double quadrato(double x) {
  return x * x;
}

double sommaQuadratiMaggiori(double a, double b, double c) {
  double tmp;
  if (a < b) {
    tmp = a;
    a = b;
    b = tmp;
  }
  if (b < c) {
    b = c;
  }
  return quadrato(a) + quadrato(b);
}

int main() {
  cout << sommaQuadratiMaggiori(1, 2, 3) << endl;
  cout << sommaQuadratiMaggiori(1, 3, 2) << endl;
  cout << sommaQuadratiMaggiori(2, 1, 3) << endl;
  cout << sommaQuadratiMaggiori(2, 3, 1) << endl;
  cout << sommaQuadratiMaggiori(3, 1, 2) << endl;
  cout << sommaQuadratiMaggiori(3, 2, 1) << endl;

  return 0;
}