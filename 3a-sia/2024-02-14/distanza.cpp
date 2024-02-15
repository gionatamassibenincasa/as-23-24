/** Calcola la distanza euclidea tra due punti
  *
  * @author: Gionata Massi <gionata.massi@savoiabenincasa.it>
  * @date: 2024-02-14
  */
#include <iostream>
using namespace std;

double quadrato(double x) {
  return x * x;
}

double valore_assoluto(double x) {
  if (x >= 0)
    return x;
  return -x;
}

bool accurata(double r, double s) {
  return valore_assoluto(quadrato(s) - r) < 1E-12;
}

double valor_medio(double a, double b) {
  return (a + b) / 2;
}

double migliora_stima(double r, double s) {
  return valor_medio(s, r / s);
}

double radq_aux(double r, double s) {
  if (accurata(r, s))
    return s;
  return radq_aux(r, migliora_stima(r, s));
}

double radq(double x) {
  return radq_aux(x, x / 2);
}

double somma_quadrati(double x, double y) {
  return quadrato(x) + quadrato(y);
}

/**
 * Calcola la distanza euclidea tra due punti
 * @param x1 coordinate x del primo punto
 * @param y1 coordinate y del primo punto
 * @param x2 coordinate x del secondo punto
 * @param y2 coordinate y del secondo punto
 * @return la distanza euclidea tra i due punti
 */
double distanza(double x1, double y1, double x2, double y2) {
    return radq(somma_quadrati(x2 - x1, y2 - y1));
}

int main() {
  double xa = 0, ya = 0,
         xb = 5, yb = 0,
         xc = 5, yc = 5;

  cout << "Distanza AB: " << distanza(xa, ya, xb, yb) << endl;
  cout << "Distanza BC: " << distanza(xb, yb, xc, yc) << endl;
  cout << "Distanza AC: " << distanza(xa, ya, xc, yc) << endl;

  return 0;
}