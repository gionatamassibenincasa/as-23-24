#include <iostream>
using namespace std;

double somma_inversi_potenze() {
  double somma = 0;
  double addendo = 1.;
  do {
    somma = somma + addendo;
    addendo = addendo / 2;
  } while(addendo > 1e-16);

  return somma;
}

int main() {
  cout << somma_inversi_potenze() << endl;

  return 0;
}