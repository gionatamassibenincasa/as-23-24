#include <iostream>
using namespace std;

double pi_quarti() {
  double somma = 0;
  double segno = +1;
  int dispari = 1;
  do {
    somma += segno / dispari;
    dispari += 2;
    segno *= -1;
  } while(dispari < 100);

  return somma;
}

int main() {
  cout << pi_quarti() << endl;

  return 0;
}