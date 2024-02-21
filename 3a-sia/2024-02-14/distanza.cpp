/** Calcola la distanza euclidea tra due punti
  *
  * @author: Gionata Massi <gionata.massi@savoiabenincasa.it>
  * @date: 2024-02-14
  */
#include <iostream>
using namespace std;

/** Calcola il quadrato di un numero
 * @param x il numero
 * @return il quadrato di x
 */
double quadrato(double x) {
  return x * x;
}

/** Calcola il valore assoluto di un numero
 * @param x il numero
 * @return il valore assoluto di x
*/
double valore_assoluto(double x) {
  if (x >= 0)
    return x;
  return -x;
}

/** Valuta l'accuratezza della stima della radice quadrata
 * @param r il radicando
 * @param s la stima della radice quadrata
 * @return vero se il valore assoluto della differenza tra il quadrato della stima e il radicando è minore di 10^(-12)
 */
bool accurata(double r, double s) {
  return valore_assoluto(quadrato(s) - r) < 1E-12;
}

/** Calcola il valore medio tra due
 * @param a un numero
 * @param b un altro numero
 * @return il valor medio tra a e b
 */
double valor_medio(double a, double b) {
  return (a + b) / 2;
}

/** Migliora la stima della radice quadrata approssimando il lato con la media dei lati del rettangolo di lato s e area r
 * @param r il radicando
 * @param s la stima
 * @return la nuova stima
 */
double migliora_stima(double r, double s) {
  return valor_medio(s, r / s);
}

/** Calcola la radice quadrata del radicando r in modo ricorsivo a partire da una stima s
 * @param r il radicando
 * @param s la stima iniziale
 * @return la radice quadrata del radicando
 */
double radq_aux(double r, double s) {
  if (accurata(r, s))
    return s;
  return radq_aux(r, migliora_stima(r, s));
}

/** Calcola la radice quadrata del radicando
 * @param x il radicando
 * @return la radice quadrata del radicando
 */
double radq(double x) {
  return radq_aux(x, x / 2);
}

/** Somma i quadrati degli argomenti
 * @param x un numero
 * @param y un secondo numero
 * @return x^2 + y^2
 */
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