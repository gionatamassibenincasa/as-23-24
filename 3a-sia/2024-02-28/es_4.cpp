#include <iostream>
using namespace std;

long int fattoriale(unsigned int n) {
  if (n == 0) return 1;
  return n * fattoriale(n - 1);
}

int main() {
  cout << fattoriale(5) << endl;

  return 0;
}