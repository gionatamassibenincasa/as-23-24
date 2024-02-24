// Esercizio diapositive 13 e seguenti pdf nella directory
#include <iostream>
using namespace std;

// REMINDER:
// n / d = q e
// n % d = r se
// n = q * d + r e 0 <= r < d

int f(int x) {
  int a, b, c = 0;
  while (x > 0) {
    a = x % 10;
    b = 1 - a % 2;
    c += b;
    x /= 10;
  }

  return c;
}

/** Restituisce il numero di cifre pari nell'argomento
  *
  * @param x un numero naturale >= 0
  * @return il numero di cifre pari
  */
int contaCifrePari(int x) {
  // Una singola cifra del parametro x
  int cifra;
  // Vale 1 se la cifra è pari, 0 se dispari
  int pari;
  // Accumulatore del numero di cifre pari
  int contaPari = 0;
  while (x > 0) {
    cifra = x % 10;
    pari = 1 - a % 2;
    contaPari += b;
    x /= 10;
  }

  return contaPari;
}

int main() {
  for (int i = 99; i < 121; i++) {
    cout << "f(" << i << ") = " << f(i) << endl;
  }

  return 0;
}