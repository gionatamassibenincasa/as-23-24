#include <iostream>
#include <cmath>
using namespace std;

// Calcola il doppio del numero inserito da tastiera
void esercizio01() {
  int n;
  cout << "Immetti un numero: ";
  cin >> n;
  cout << "Il doppio e' pari a: " << 2 * n << endl;
}

// Dato il lato, trova perimetro e area del quadrato
void esercizio02() {
  double lato, area, perimetro;
  cout << "Immetti il lato di un quadrato: ";
  cin >> lato;
  area = lato*lato;
  perimetro = lato*4;
  cout << "Area del quadrato " << area << endl;
  cout << "Perimetro del quadrato " << perimetro << endl;
}

// Dato il raggio, calcola circonferenza e area del cerchio
void esercizio03() {
  double raggio;
  cout << "Inserisci la lunghezza del raggio: ";
  cin >> raggio;
  cout << "La circonferenza del cerchio è: " << (2*M_PI*raggio);
  cout << "L'area del cerchio è: " << (raggio*raggio*M_PI);
}

// Scambia il valore di due variabili
void esercizio04() {
  char x='x', y='y', tmp;
  cout << "x: " << x << "\t" << "y: " << y << endl;
  tmp = x;
  x = y;
  y = tmp;
  cout << "Dopo lo scambio" << endl;
  cout << "x: " << x << "\t" << "y: " << y << endl;
}
void esercizio05() {
  double a, b;
  cout << "Immetti i cateti per calcolare l'ipotenusa: ";
  cin >> a >> b;
  cout << "L'ipotenusa del triangolo è: " << sqrt(a*a+b*b) << endl;
}

//data l'età di tre persone calcola l'età media
void esercizio06() {
  int somma = 0;
  const int numeroPersone = 3;
  for(int n = 0; n < numeroPersone; ++n) {
    int eta;
    cout << "Immette l'età della persona numero " << (n + 1) << ": ";
    cin >> eta;
    somma += eta;
  }
  cout << "L'età media è: " << static_cast<double>(somma) / numeroPersone << endl;
}

// Causare un errore in fase di esecuzione
void esercizio07() {
  int x;
  float y;
  cin >> x;
  y = sqrt(x);
  cout << y;
  // Immettere un radicando negativo
}

void esercizio08() {
  /* input */
  int i;
  cout << "Introduci un numero ";
  cin >> i;
  i *= 2;
  cout << i;
  
}

int main() {
  // esercizio01();
  // esercizio02();
  // esercizio03();
  // esercizio04();
  // esercizio05();
  // esercizio06();
  // esercizio07();
  esercizio08();
  return 0;
}