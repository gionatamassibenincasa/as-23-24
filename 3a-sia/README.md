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


<iframe width="800" height="500" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=%23include%20%3Ciostream%3E%0Ausing%20namespace%20std%3B%0A%0Aint%20main%28%29%20%7B%0A%20%20%20%20int%20a1%20%3D%204,%0A%20%20%20%20%20%20%20%20a2%20%3D%209,%0A%20%20%20%20%20%20%20%20s%20%3D%20a1%20%2B%20a2%3B%0A%20%20%20%20cout%20%3C%3C%20a1%20%3C%3C%20%22%20%2B%20%22%20%3C%3C%20a2%20%3C%3C%20%22%20%3D%20%22%20%3C%3C%20s%20%3C%3C%20endl%3B%0A%20%20%20%20return%200%3B%0A%7D&codeDivHeight=400&codeDivWidth=350&cumulative=false&curInstr=6&heapPrimitives=nevernest&origin=opt-frontend.js&py=cpp_g%2B%2B9.3.0&rawInputLstJSON=%5B%5D&textReferences=false"> </iframe>