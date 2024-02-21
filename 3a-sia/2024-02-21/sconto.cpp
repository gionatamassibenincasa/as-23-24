// Calcola l'importo eventualmente scontato dati il prezzo e la quantità
#include <iostream>
using namespace std;

/** Calcola l'importo secondo la seguente convenzione:
  * se la quantità è maggiore o uguale di 5, applica lo sconto del 5 %
  * se la quantità è maggiore o uguale di 10, applica lo sconto del 7 %
  * se la quantità è maggiore o uguale di 50, applica lo sconto del 15 %
  * altrimenti non applicare sconti
  *
  * @param p prezzo di vendita
  * @param q quantità venduta
  * @ return l'importo, eventualmente scontato con la giusta percentuale
*/
double calcola_importo(double p, double q) {
  double importo = p * q;
  double sconto = 0;
  if (q >= 50) sconto = importo * 0.15;
  else if (q >= 10) sconto = importo * 0.07;
  else if (q >= 5) sconto = importo * 0.05;

  return importo - sconto;
}

int main() {
  // Il prezzo
  double p;
  // La quantità
  int q;
  cout << "Prezzo: ";
  cin >> p;
  cout << "Quantità: ";
  cin >> q;
  cout << "Importo: " << calcola_importo(p, q) << endl;
  
  return 0;
}