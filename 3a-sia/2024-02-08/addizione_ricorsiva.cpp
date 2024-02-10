#include <iostream>
using namespace std;

/**
 * @brief Incrementa il numero di input di 1
 * 
 * @param n Il numero da incrementare
 * @return Il numero incrementato di 1
 */
int incrementa(int n) {
  return n + 1;
}

/**
 * @brief Decrementa il numero di input di 1
 * 
 * @param n Il numero da decrementare
 * @return Il numero decrementato di 1
 */
int decrementa(int n) {
  return n - 1;
}

/**
 * @brief Restituisce true se il numero è zero, altrimenti restituisce false
 * 
 * @param n Il numero da controllare
 * @return true se il numero è zero, altrimenti false
 */
bool zero(int n) {
  return (n == 0);
}
/**
 * @brief Addiziona due numeri ricorsivamente
 * 
 * @param n Il primo numero
 * @param m Il secondo numero
 * @return La somma dei due numeri
 */
int addizione(int n, int m) {
  if (zero(m))
    return n;
  return addizione(incrementa(n), decrementa(m));
}

int main() {
  for (int a = 0; a < 6; a++) {
    for (int b = 0; b < 6; b++) {
      cout << a << " + " << b << " = " << addizione(a, b) << endl;
    }
  }
}