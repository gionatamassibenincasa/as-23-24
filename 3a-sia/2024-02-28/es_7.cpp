#include <iostream>
using namespace std;

double massimo3(double a, double b, double c) {
  return max(max(a, b), c);
}

int main() {
  cout << massimo3(1, 2, 3) << endl;
  cout << massimo3(1, 3, 2) << endl;
  cout << massimo3(2, 1, 3) << endl;
  cout << massimo3(2, 3, 1) << endl;
  cout << massimo3(3, 1, 2) << endl;
  cout << massimo3(3, 2, 1) << endl;

  return 0;
}