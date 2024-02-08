#include <cassert>
#include <iostream>
using namespace std;

long long int fattoriale(int n) {
  assert(n >= 0);
  if (n <= 1)
    return 1;
  return n * fattoriale(n - 1);
}

int main(void) {
  for (int i = 0; i < 6; i++) {
    cout << i << "! = " << fattoriale(i) << endl;
  }
  return 0;
}