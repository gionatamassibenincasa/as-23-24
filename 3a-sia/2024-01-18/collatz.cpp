#include <iostream>
using namespace std;

int main(int argc, char *argv[]) {
  int n, lunghezza = 1;
  if (argc > 1) {
    n = stoi(argv[1]);
  } else {
    cout << "Immettere un numero naturale per generare la sequenza di Collatz: ";
    cin >> n;
  }
  while (n != 1) {
    cout << n << " ";
    lunghezza++;
    if (n % 2 == 0)
      n = n / 2;
    else
      n = 3 * n + 1;
  } 
  cout << "1." << endl;
  cout << "Lunghezza della sequenza: " << lunghezza << endl;
}