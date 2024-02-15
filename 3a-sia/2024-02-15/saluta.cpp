#include <string>
#include <iostream>
using namespace std;

string saluta(string nome) {
  return "Ciao " + nome + "!\n";
}



int main() {
  string risposta;
  cout << "Come ti chiami? ";
  cin >> risposta;
  string saluto_personalizzato = saluta(risposta);
  cout << saluto_personalizzato;
  
  return 0;
}