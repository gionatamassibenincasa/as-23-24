// Calcola la somma dei primi 100 numeri naturali, a partire da 1
#include <iostream>
using namespace std;

int main() {
  const int N = 100;
  int totale = 0;
  // Inizializzazione della variabile
  // di controllo del ciclo
  int contatore = 1;
  // Condizione del ciclo: contatore <= N
  while (contatore <= N) {
    // Blocco di istruzioni del ciclo
    totale = totale + contatore;
    // Aggiornamento (incremento) della
    // variabile di controllo del ciclo
    contatore++;
  }
  cout << "La somma dei numeri tra 1 e "
       << N << " e' pari a " << totale
       << endl;

  return 0;
}