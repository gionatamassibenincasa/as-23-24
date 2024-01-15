<script lang="ts">
 const toValue = (digits: string, base: number) : number => {
    digits = digits.toUpperCase();
    let v = 0;
    for(let i = 0; i < digits.length; i++) {
        let d: number = digits.charCodeAt(i);
        if (base <= 10 || d <= 58) {
            d -= 48;
        } else {
            d -= 55;
        }
        if (d >= base || d < 0)
            throw Error("Carattere non valido");
        v = v * base + d;
    }
    return v;
}

 const toBase = (n: number, base: number) : string => {
    let ret = "";
    do  {
        const last = n % base;
        n = Math.floor(n / base);
        if (last < 10) {
            ret = String.fromCharCode(last +48) + ret;
        } else {
            ret = String.fromCharCode(last + 55) + ret;
        }
    } while (n > 0);
    return ret;
}
	const generaInteroTra = (minimo: number, massimo: number) => {
		return Math.floor(Math.random() * (massimo - minimo + 1) + minimo);
	};
	const numeroBinarioDiNCifre = (cifre: number): string => {
		let numero = '1';
		for (cifre--; cifre > 0; cifre--) numero += generaInteroTra(0, 1);
		return numero + '';
	};
	const numeroDecimaleDiNCifre = (cifre: number): string => {
		let numero: string = '' + generaInteroTra(1, 9);
		for (cifre--; cifre > 0; cifre--) numero += generaInteroTra(0, 9);
		return numero + '';
	};

	const cifraEsadecimale = (valore: number): string => {
		let cifra: string;
		if (valore > 9) {
			cifra = String.fromCharCode(55 + valore);
		} else cifra = String.fromCharCode(48 + valore);
		return cifra;
	};
	const numeroEsadecimaleDiNCifre = (cifre: number): string => {
		let numero = cifraEsadecimale(generaInteroTra(1, 15));
		for (cifre--; cifre > 0; cifre--) {
			const cifra = cifraEsadecimale(generaInteroTra(0, 15));
			numero += cifra;
		}

		return numero + '';
	};

  interface Studente {
    cognome: string;
    nome: string;
    classe: string;
    argomenti? : any[];
  }

	const studenti1E : Studente[] = JSON.parse(`[
  {
    "cognome": "Ahmed",
    "nome": "Ansari",
    "classe": "1E"
  },
  {
    "cognome": "Akter",
    "nome": "Rabia",
    "classe": "1E"
  },
  {
    "cognome": "Ali",
    "nome": "Ommy Shahbe",
    "classe": "1E"
  },
  {
    "cognome": "Ausili",
    "nome": "Tommaso",
    "classe": "1E"
  },
  {
    "cognome": "Baldoni",
    "nome": "Alessio",
    "classe": "1E"
  },
  {
    "cognome": "Belli",
    "nome": "Leonardo",
    "classe": "1E"
  },
  {
    "cognome": "Burattini",
    "nome": "Alessandro",
    "classe": "1E"
  },
  {
    "cognome": "Buscarini",
    "nome": "Elisa",
    "classe": "1E"
  },
  {
    "cognome": "Buschi",
    "nome": "Christian",
    "classe": "1E"
  },
  {
    "cognome": "Busilacchi",
    "nome": "Alessia",
    "classe": "1E"
  },
  {
    "cognome": "Celotti",
    "nome": "Marco",
    "classe": "1E"
  },
  {
    "cognome": "Chiarelli",
    "nome": "Giorgia",
    "classe": "1E"
  },
  {
    "cognome": "Ciccarini",
    "nome": "Matteo",
    "classe": "1E"
  },
  {
    "cognome": "Daka",
    "nome": "Valentina",
    "classe": "1E"
  },
  {
    "cognome": "Ercolani",
    "nome": "Emanuele",
    "classe": "1E"
  },
  {
    "cognome": "Filippetti",
    "nome": "Giovanni",
    "classe": "1E"
  },
  {
    "cognome": "Gabrielli",
    "nome": "Ginevra",
    "classe": "1E"
  },
  {
    "cognome": "Lopez Diaz",
    "nome": "Patrick",
    "classe": "1E"
  },
  {
    "cognome": "Luo",
    "nome": "Kai Shan",
    "classe": "1E"
  },
  {
    "cognome": "Manini",
    "nome": "Filippo",
    "classe": "1E"
  },
  {
    "cognome": "Milli",
    "nome": "Angela Viola",
    "classe": "1E"
  },
  {
    "cognome": "Novelli",
    "nome": "Aurora",
    "classe": "1E"
  },
  {
    "cognome": "Osmani",
    "nome": "Leonardo",
    "classe": "1E"
  },
  {
    "cognome": "Pignotti",
    "nome": "Alessio",
    "classe": "1E"
  },
  {
    "cognome": "Pomarico",
    "nome": "Andrea",
    "classe": "1E"
  },
  {
    "cognome": "Presta",
    "nome": "Nicola",
    "classe": "1E"
  },
  {
    "cognome": "Quarantini",
    "nome": "Lorenzo",
    "classe": "1E"
  },
  {
    "cognome": "Romagnoli",
    "nome": "Vittorio",
    "classe": "1E"
  }
]`);

	const studenti1F  : Studente[]  = JSON.parse(`[
  {
    "cognome": "Andonaia",
    "nome": "Adamo",
    "classe": "1F"
  },
  {
    "cognome": "Andreoli",
    "nome": "Alessandro",
    "classe": "1F"
  },
  {
    "cognome": "Antonante",
    "nome": "Filippo",
    "classe": "1F"
  },
  {
    "cognome": "Bordeianu",
    "nome": "Roberto",
    "classe": "1F"
  },
  {
    "cognome": "Bugari",
    "nome": "Riccardo",
    "classe": "1F"
  },
  {
    "cognome": "Caporalini",
    "nome": "Francesca",
    "classe": "1F"
  },
  {
    "cognome": "Cavanagh",
    "nome": "Leonardo Russell",
    "classe": "1F"
  },
  {
    "cognome": "Dini",
    "nome": "Sara",
    "classe": "1F"
  },
  {
    "cognome": "Fiorin",
    "nome": "Marco",
    "classe": "1F"
  },
  {
    "cognome": "Gaffuri",
    "nome": "Livia",
    "classe": "1F"
  },
  {
    "cognome": "Houqe",
    "nome": "Soshi",
    "classe": "1F"
  },
  {
    "cognome": "Imperatore",
    "nome": "Federico",
    "classe": "1F"
  },
  {
    "cognome": "Johnson",
    "nome": "Alice",
    "classe": "1F"
  },
  {
    "cognome": "Klaoui",
    "nome": "Emeni",
    "classe": "1F"
  },
  {
    "cognome": "Kokoneshi",
    "nome": "Aron",
    "classe": "1F"
  },
  {
    "cognome": "Mia",
    "nome": "Ami",
    "classe": "1F"
  },
  {
    "cognome": "Moreno",
    "nome": "Nicolò Umandal",
    "classe": "1F"
  },
  {
    "cognome": "Ong",
    "nome": "Carmelo",
    "classe": "1F"
  },
  {
    "cognome": "Regini",
    "nome": "Edoardo",
    "classe": "1F"
  },
  {
    "cognome": "Roccheggiani",
    "nome": "Gabriele",
    "classe": "1F"
  },
  {
    "cognome": "Sikdar",
    "nome": "Sara",
    "classe": "1F"
  },
  {
    "cognome": "Soha",
    "nome": "Samiya Islam",
    "classe": "1F"
  },
  {
    "cognome": "Travaglini",
    "nome": "Giovanni",
    "classe": "1F"
  },
  {
    "cognome": "Virgili",
    "nome": "Francesco",
    "classe": "1F"
  }
]`);

interface Classe {
  classe: string;
  studenti: Studente[]
}

	const classi :Classe[] = [
		// { classe: '1E', studenti: studenti1E },
		{ classe: '1F', studenti: studenti1F }
	];

  interface Quesito {
    domanda: string;
    risposta: string;
  }

  const generaDomandaRispostaEs1 = (numeroDiCifreBinarie: number) : Quesito => {
    const domanda = numeroBinarioDiNCifre(numeroDiCifreBinarie);
    const risposta = "" + toValue(domanda, 2);
    return {domanda: domanda + '<sub>2</sub>', risposta: risposta};
  }

  const generaQuesitiEs1 = (numeroDiCifreBinarie: number[]) : Quesito[] => {
    let quesiti : Quesito[] = [];
    let quesitiGenerati = new Set();
    numeroDiCifreBinarie.forEach(n => {
        let q = generaDomandaRispostaEs1(n);
        while(quesitiGenerati.has(q.domanda)) {
          q = generaDomandaRispostaEs1(n);
        }
        quesitiGenerati.add(q.domanda);
        quesiti.push(q);
    });
    return quesiti;
  }

  const generaDomandaRispostaEs2 = (numeroDiCifreBinarie: number) : Quesito => {
    const domanda = numeroBinarioDiNCifre(numeroDiCifreBinarie);
    const risposta = "" + toBase(toValue(domanda, 2), 4);
    return {domanda: domanda + '<sub>2</sub>', risposta: risposta + '<sub>4</sub>'};
  }

  const generaQuesitiEs2 = (numeroDiCifreBinarie: number[]) : Quesito[] => {
    let quesiti : Quesito[] = [];
    let quesitiGenerati = new Set();
    numeroDiCifreBinarie.forEach(n => {
        let q = generaDomandaRispostaEs2(n);
        while(quesitiGenerati.has(q.domanda)) {
          q = generaDomandaRispostaEs2(n);
        }
        quesitiGenerati.add(q.domanda);
        quesiti.push(q);
    });
    return quesiti;
  }

  const generaDomandaRispostaEs3 = (numeroDiCifre: number) : Quesito => {
    const domanda = numeroEsadecimaleDiNCifre(numeroDiCifre);
    const risposta = "" + toBase(toValue(domanda, 16), 4);
    return {domanda: domanda + '<sub>16</sub>', risposta: risposta + '<sub>4</sub>'};
  }

  const generaQuesitiEs3 = (numeroDiCifre: number[]) : Quesito[] => {
    let quesiti : Quesito[] = [];
    let quesitiGenerati = new Set();
    numeroDiCifre.forEach(n => {
        let q = generaDomandaRispostaEs3(n);
        while(quesitiGenerati.has(q.domanda)) {
          q = generaDomandaRispostaEs3(n);
        }
        quesitiGenerati.add(q.domanda);
        quesiti.push(q);
    });
    return quesiti;
  }

  
  const generaDomandaRispostaEs4 = (numeroDiCifre: number) : Quesito => {
    const domanda = numeroDecimaleDiNCifre(numeroDiCifre);
    const risposta = "" + toBase(toValue(domanda, 10), 8);
    return {domanda: domanda, risposta: risposta + '<sub>8</sub>'};
  }

  const generaQuesitiEs4 = (numeroDiCifre: number[]) : Quesito[] => {
    let quesiti : Quesito[] = [];
    let quesitiGenerati = new Set();
    numeroDiCifre.forEach(n => {
        let q = generaDomandaRispostaEs4(n);
        while(quesitiGenerati.has(q.domanda)) {
          q = generaDomandaRispostaEs4(n);
        }
        quesitiGenerati.add(q.domanda);
        quesiti.push(q);
    });
    return quesiti;
  }

  const generaDomandaRispostaEs5 = (numeroDiCifre: number) : Quesito => {
    const domanda = numeroDecimaleDiNCifre(numeroDiCifre);
    const risposta = "" + toBase(toValue(domanda, 10), 5);
    return {domanda: domanda, risposta: risposta + '<sub>5</sub>'};
  }

  const generaQuesitiEs5 = (numeroDiCifre: number[]) : Quesito[] => {
    let quesiti : Quesito[] = [];
    let quesitiGenerati = new Set();
    numeroDiCifre.forEach(n => {
        let q = generaDomandaRispostaEs5(n);
        while(quesitiGenerati.has(q.domanda)) {
          q = generaDomandaRispostaEs5(n);
        }
        quesitiGenerati.add(q.domanda);
        quesiti.push(q);
    });
    return quesiti;
  }

    const generaQuesiti = (numeroDiCifre: number[], generaDomandaRisposta: Function ) : Quesito[] => {
    let quesiti : Quesito[] = [];
    let quesitiGenerati = new Set();
    numeroDiCifre.forEach(n => {
        let q = generaDomandaRisposta(n);
        while(quesitiGenerati.has(q.domanda)) {
          q = generaDomandaRisposta(n);
        }
        quesitiGenerati.add(q.domanda);
        quesiti.push(q);
    });
    return quesiti;
  }


	classi.forEach((c) => {
		c.studenti.forEach((s) => {
			s.argomenti = [
				{
					argomento: 'Converti da base 2 in base 10 i seguenti numeri:',
					quesiti: generaQuesiti([3,	4, 5,	6], generaDomandaRispostaEs1)
				},
				{
					argomento: 'Converti da base 2 in base 4 i seguenti numeri',
					quesiti: generaQuesiti([4,	5, 6,	7], generaDomandaRispostaEs2)
				},
				{
					argomento: 'Converti da base 16 in base 4 i seguenti numeri',
					quesiti: generaQuesiti([1, 2, 3, 4], generaDomandaRispostaEs3)
				},
				{
					argomento: 'Converti in base 8 i seguenti numeri',
					quesiti: generaQuesiti([2, 2, 2, 3], generaDomandaRispostaEs4)
				},
				{
					argomento: 'Converti in base 5 i seguenti numeri',
					quesiti: generaQuesiti([2, 2, 2, 3], generaDomandaRispostaEs5)
				}
			];
		});
	});
</script>

{#each classi as c}
	{#each c.studenti as s, i}
		<header>
			<div>
				<strong
					><span class="maiuscoletto">{s.cognome}</span>
					{s.nome}</strong
				>, Classe {s.classe}, pos. registro n. {i + 1}<br />
				Verifica di Informatica &mdash; 15 gennaio 2024<br>
        &nbsp;
			</div>
		</header>
		<main class="container-fluid">
			{#each s.argomenti as a, a_idx}
				<section>
					<div class="neretto">{a_idx + 1}. {a.argomento}</div>
					<div class="grid">
						{#each a.quesiti as q, q_idx}
							<div><span class="domanda">{@html q.domanda}</span> = ______________________________________________________</div>
						{/each}
					</div>
					<!-- quesiti -->
				</section>
			{/each}
			<!-- argomenti -->
		</main>

		<footer>
			# Esercizi corretti: ______/20; Percentuale: ______ %; Voto: ______;<br><br> Firma per presa visione:
			____________________________________________
		</footer>
	{/each}
	<!-- studenti -->

  <div id="soluzioni">
  <!-- Correzione -->
  	{#each c.studenti as s, i}
		<div>
				<strong
					><span class="maiuscoletto">{s.cognome}</span>
					{s.nome}</strong
				>, Classe {s.classe}, pos. registro n. {i + 1}
			</div>
		<div class="container-fluid">
			{#each s.argomenti as a, a_idx}
				<section>
					<div class="neretto">{a_idx + 1}. {a.argomento}</div>
					<div class="grid">
						{#each a.quesiti as q, q_idx}
							<div>{@html q.domanda} = {@html q.risposta}</div>
						{/each}
					</div>
					<!-- quesiti -->
				</section>
			{/each}
			<!-- argomenti -->
      </div>

		{/each}
	<!-- studenti -->
  </div>

{/each}

<!-- classi -->

<style>
	.neretto {
		font-weight: bold;
	}
	.maiuscoletto {
		font-variant: small-caps;
	}
	@media print {
		footer {
			page-break-after: always;
		}

    #soluzioni div.grid {
      width: 17.50cm;
      --border: 1px solid green;
      display: inline-block;

    }
    #soluzioni div.grid  div {
      box-sizing: border-box;
      display: inline-block;
      --border: 1px solid red;
      width: 4.35cm;
      height: 0.75cm;
    }

    .domanda {
      box-sizing: border-box;
      display: inline-block;
      text-align: right;
      width: 2cm;
      --border: 1px solid red;
    }

	}

</style>
