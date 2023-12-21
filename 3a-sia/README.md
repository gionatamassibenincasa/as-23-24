<!--
author:   Gionata Massi

email:    gionata.massi@savoiabenicasa.it

version:  2023-12-21

language: it

narrator: IT Italian Male

comment:  

import: https://raw.githubusercontent.com/LiaScript/CodeRunner/master/README.md

import: https://raw.githubusercontent.com/liascript-templates/plantUML/master/README.md
-->

# C++ - AS 2023-24 - 3A Mod SIA

Introduzione al linguaggio C++ e principi di programmazione

__Se non vedi una presentazione, eseguilo su LiaScript:__

https://liascript.github.io/course/?https://raw.githubusercontent.com/gionatamassibenincasa/as-23-24/main/3a-sia/README.md

> Programmare è capire
>
> Kristen Nygaard


## Il design del C++

* Scopo: aiutare ad esprimere le idee sui processi di calcolo.

- Per garantire l'efficienza

    + mappatura diretta dei tipi definiti dallo hardware

    + mappatura diretta delle operazioni definite dallo hardware

## I fondamenti

Il C++ è un linguaggio compilato.

```text @plantUML
@startuml
(sorgente 1) --> (oggetto 1) : compilazione
(sorgente 2) --> (oggetto 2) : compilazione
(oggetto 1) --> (eseguibile) : collegamento
(oggetto 2) --> (eseguibile) : collegamento
@enduml
```


## Il programma più piccolo possibile

```cpp
// file: ridotto.cpp
int main() {}
```

Sulla shell

```sh
g++ --save-temps -fverbose-asm -OO ridotto.cpp
```

* Ciascun programma C++ deve avere **esattamente** una funzione globale `main`.
* Il programma inizia eseguendo la funzione `main`.
* Il valore restituo dalla funzione `main` è un codice d'errore che viene usato dal sistema operativo. Il valore è 0 indica che l'esecuzione è avvenuta correttamente.

## Ciao Mondo  - Codice

``` c
#include <iostream>

int main() {
    std::cout << "Ciao Mondo!\n";

    return 0;
}
```
@LIA.cpp


## Ciao Mondo - esecuzione

<iframe width="800" height="500" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=%23include%20%3Ciostream%3E%0A%0Aint%20main%28%29%20%7B%0A%20%20%20%20std%3A%3Acout%20%3C%3C%20%22Ciao%20Mondo!%5Cn%22%3B%0A%0A%20%20%20%20return%200%3B%0A%7D&codeDivHeight=400&codeDivWidth=350&cumulative=false&curInstr=0&heapPrimitives=nevernest&origin=opt-frontend.js&py=cpp_g%2B%2B9.3.0&rawInputLstJSON=%5B%5D&textReferences=false"> </iframe>

## Ciao Mondo - spiegazione della sintassi


* L'operatore `<<` è detto *poni in* e scrive il secondo argomento sul primo.
* `"Ciao Mondo!\n"` è un letterale stringa, una sequenza di caratteri racchiusa tra doppi apici, `'\n'` è carattere *newline*.
* `std::` specifica lo spazio dei nomi.
* `#include <iostream>` specifica al pre-elaboratore di includere le definizioni delle risorse presenti nel file `iostream` e in quelli da lui inclusi.
* `int main()` precedere la definizione della funzione a partire dalla quale viene eseguito il programma. La definizione sarà descritta tra le parentesi `{` e `}`.
* `cout` è una risorsa che gestisce la scrittura sullo schermo.
* `return 0` restituisce il controllo al sistema operativo comunicando il codice di errore 0, ovvero uscita con successo.

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
    cout << a1 << " + "
         << a2 << " = "
         << s << endl;
    return 0;
}
```
@LIA.cpp

<iframe width="800" height="500" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=%23include%20%3Ciostream%3E%0Ausing%20namespace%20std%3B%0A%0Aint%20main%28%29%20%7B%0A%20%20%20%20int%20a1%20%3D%204,%0A%20%20%20%20%20%20%20%20a2%20%3D%209,%0A%20%20%20%20%20%20%20%20s%20%3D%20a1%20%2B%20a2%3B%0A%20%20%20%20cout%20%3C%3C%20a1%20%3C%3C%20%22%20%2B%20%22%0A%20%20%20%20%20%20%20%20%20%3C%3C%20a2%20%3C%3C%20%22%20%3D%20%22%0A%20%20%20%20%20%20%20%20%20%3C%3C%20s%20%3C%3C%20endl%3B%0A%20%20%20%20return%200%3B%0A%7D&codeDivHeight=400&codeDivWidth=350&cumulative=false&curInstr=0&heapPrimitives=nevernest&origin=opt-frontend.js&py=cpp_g%2B%2B9.3.0&rawInputLstJSON=%5B%5D&textReferences=false"> </iframe>
