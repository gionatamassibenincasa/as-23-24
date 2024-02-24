// Esercizio diapositive 13 e seguenti pdf nella directory
#include <iostream>
using namespace std;

// REMINDER:
// n / d = q e
// n % d = r se
// n = q * d + r e 0 <= r < d

int f(int x) {
  int a, b, c = 0;
  while (x > 0) {
    a = x % 10;
    b = 1 - a % 2;
    c += b;
    x /= 10;
  }

  return c;
}

int main() {
  for (int i = 99; i < 121; i++) {
    cout << "f(" << i << ") = " << f(i) << endl;
  }

  return 0;
}