// Un programma per prendere confidenza
// con i tipi numerici e con gli operatori
#include <iostream>
#include <cmath>
using namespace std;

int main() {
  int n;
  cout << "Immetti un numero: ";
  cin >> n;
  cout << "n + 1 = " << n + 1 << endl;
  cout << "n^2 = " << n * n << endl;
  cout << "n / 2 = " << static_cast<double>(n) / 2 << endl;
  cout << "radq(2) = " << sqrt(n) << endl;
  cout << "5n = " << 5* n << endl;

  return 0;
}