// Stampa "pari" se il numero è pari, "dispari" altrimenti
#include <iostream>
using namespace std;

int main() {
  cout << "Immetti un numero intero: ";
  int p;
  cin >> p;
  if (p % 2 == 0)
    cout << "Pari\n";
  else
    cout << "Dispari\n";
  
  return 0;
}