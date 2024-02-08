#include <iostream>
using namespace std;

/* Calcola il valor medio di due numeri
 *
 * @param a il primo numero
 * @param b il secondo numero
 * @return il valor medio tra a e b
 */
double valor_medio(double a, double b) {
  return (a + b) / 2;
}

double migliora_stima(double s, double r) {
  return valor_medio (s, r/s);
}

double valore_assoluto(double x) {
  if (x >= 0)
    return x;
  else
    return -x;
}

double quadrato(double x) {
  return x * x;
}

bool accurata (double s, double r) {
  return valore_assoluto(quadrato(s) - r) <= 10e-6;
}

double radq_aux(double r, double s) {
  if (accurata(s, r))
    return s;
  else
    return radq_aux(r, migliora_stima(s, r));
}

double radq(double r) {
  return radq_aux(r, 1);
}

int main() {
  for(int i = 0; i < 10; i++) {
    cout << "Radice quadrata di " << i << ": " << radq(i) << endl;
  }

  return 0;
}