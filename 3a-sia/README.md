<!--
author:   Gionata Massi

email:    gionata.massi@savoiabenicasa.it

version:  0.0.1

language: it

narrator: IT Italian Male

comment:  

import: import: https://raw.githubusercontent.com/LiaScript/CodeRunner/master/README.md
-->

# C++ -- AS 2023-24 -- 3A Mod SIA

Introduzione al linguaggio

__Eseguilo su LiaScript:__

<!-- hidden = "true" -->
![demo](demo.gif)

https://liascript.github.io/course/?https://raw.githubusercontent.com/gionatamassibenincasa/as-23-24/main/3a-sia/README.md


## Il programma più piccolo possibile

```cpp
// file: ridotto.cpp
int main() {}
```

Sulla shell

```sh
g++ --save-temps -fverbose-asm -OO ridotto.cpp
```


## Ciao Mondo

``` c
#include <iostream>
using namespace std;

int main() {
    cout << "Ciao Mondo!" << endl;
    return 0;
}
```
@LIA.cpp

## Ciao ...

``` c
#include <iostream>
#include <string>
using namespace std;

int main() {
    string nome;
    cout << "Come ti chiami? ";
    cin >> nome;
    cout << "Ciao " << nome << "!" << endl;

    return 0;
}
```
@LIA.cpp

## Somma di due numeri

``` c
#include <iostream>
using namespace std;

int main() {
    int a1 = 4,
        a2 = 9,
        s = a1 + a2;
    cout << a1 << " + " << a2 << " = " << s << endl;
    return 0;
}
```
@LIA.cpp
