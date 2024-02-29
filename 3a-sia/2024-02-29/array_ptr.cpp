#include <string>
#include <iostream>
using namespace std;

int main() {
  char s[13] = "Ciao mondo!\n";
  char *s1 = s;  
  for (int i = 0; s[i] != '\0'; i++) {
    cout << "s[" << i << "]: " << s[i] << endl;
    cout << "*(s+i): " <<  *(s+i) << endl;
  }

  return 0;
}
