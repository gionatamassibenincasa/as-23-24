#include <iostream>
using namespace std;

int massimo(int array[], int n) {
  if (n < 1)
    return -1;
  int massimoCorrente = array[0];
  for(int indice = 1; indice < n; ++indice)
    if (massimoCorrente < array[indice])
      massimoCorrente = array[indice];
  return massimoCorrente;
}

int main() {
  const int n = 5;
  int A[n] = {3, 2, 4, 5, 1};
  int B[n] = {1, 2, 3, 4, 5};
  int C[n] = {5, 4, 3, 2, 1};

  cout << "Massimo di A:" << massimo(A, n) << endl;
  cout << "Massimo di B:" << massimo(B, n) << endl;
  cout << "Massimo di C:" << massimo(C, n) << endl;
  
  return 0;
}