// Calcola la somma dei primi 100 numeri naturali, a partire da 1
#include <iostream>
using namespace std;

int main() {
  const int N = 100;
  int totale = 0;
  for (int contatore = 1; contatore <= N; contatore++) {
    totale = totale + contatore;
  }
  cout << "La somma dei numeri tra 1 e "
       << N << " e' pari a " << totale
       << endl;

  return 0;
}