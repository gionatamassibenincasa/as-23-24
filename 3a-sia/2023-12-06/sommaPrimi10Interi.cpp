#include <iostream>
using namespace std;

int main() {
  int totale = 0,
      contatore = 1; 
  while (contatore < 101) {
    totale = totale + contatore;
    contatore++;
  }
  cout << "La somma dei numeri compresi tra 1 e 10: " << totale << endl;
  return 0;  
}
