	const generaInteroTra = (minimo: number, massimo: number) => {
		return Math.floor(Math.random() * (massimo - minimo + 1) + minimo);
	};
	const numeroBinarioDiNCifre = (cifre: number): string => {
		let numero = '1';
		for (cifre--; cifre > 0; cifre--) numero += generaInteroTra(0, 1);
		return numero;
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

		return numero;
	};
	const studenti1E = JSON.parse(`[
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

	const studenti1F = JSON.parse(`[
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
	const classi = [
		{ classe: '1E', studenti: studenti1E },
		{ classe: '1F', studenti: studenti1F }
	];

	classi.forEach((c) => {
		c.studenti.forEach((s) => {
			s.argomenti = [
				{
					argomento: 'Converti da base 2 a base 10 i seguenti numeri:',
					quesiti: [
						numeroBinarioDiNCifre(3),
						numeroBinarioDiNCifre(4),
						numeroBinarioDiNCifre(5),
						numeroBinarioDiNCifre(6)
					]
				}
			];
		});
	});
	console.log(JSON.stringify(classi, null, 2));
