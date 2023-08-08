BEGIN TRANSACTION;
DROP TABLE IF EXISTS "Priorita";
CREATE TABLE IF NOT EXISTS "Priorita" (
	"id" INTEGER NOT NULL,
	"priorita" TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "Insegnante";
CREATE TABLE IF NOT EXISTS "Insegnante" (
	"id" INTEGER NOT NULL,
	"cognome" TEXT,
	"nome" TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "Obiettivo";
CREATE TABLE IF NOT EXISTS "Obiettivo" (
	"id" INTEGER NOT NULL,
	"descrizione" TEXT,
	"misurabile" INTEGER CHECK(
		"misurabile" = 0
		OR "misurabile" = 1
	),
	"obiettivoPadreId" INTEGER DEFAULT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("obiettivoPadreId") REFERENCES "Obiettivo"("id") ON UPDATE CASCADE ON DELETE
	SET NULL
);
DROP TABLE IF EXISTS "Metodologia";
CREATE TABLE IF NOT EXISTS "Metodologia" (
	"id" INTEGER NOT NULL,
	"descrizione" TEXT,
	"riferimento" TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "Istituzione";
CREATE TABLE IF NOT EXISTS "Istituzione" (
	"id" INTEGER NOT NULL,
	"descrizione" TEXT,
	"referente" TEXT,
	"website" TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "TipoAttivita";
CREATE TABLE IF NOT EXISTS "TipoAttivita" (
	"id" INTEGER NOT NULL,
	"descrizione" TEXT,
	"frontale" INTEGER CHECK(
		"frontale" = 0
		OR "frontale" = 1
	),
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "Attivita";
CREATE TABLE IF NOT EXISTS "Attivita" (
	"id" INTEGER NOT NULL,
	"insegnanteId" INTEGER DEFAULT NULL,
	"descrizione" TEXT NOT NULL,
	"ore" NUMERIC,
	"tipoId" INTEGER NOT NULL,
	"FaseId" INTEGER DEFAULT NULL,
	FOREIGN KEY("insegnanteId") REFERENCES "Insegnante"("id") ON UPDATE CASCADE ON DELETE
	SET NULL,
		FOREIGN KEY("tipoId") REFERENCES "TipoAttivita"("id") ON UPDATE CASCADE ON DELETE CASCADE,
		FOREIGN KEY("FaseId") REFERENCES "Fase"("id") ON UPDATE CASCADE ON DELETE
	SET NULL,
		PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "Progetto";
CREATE TABLE IF NOT EXISTS "Progetto" (
	"id" INTEGER NOT NULL,
	"codice" TEXT DEFAULT NULL,
	"denominazione" TEXT NOT NULL,
	"prioritaId" INTEGER NOT NULL DEFAULT 6,
	"responsabileId" INTEGER DEFAULT NULL,
	"considerazioni" TEXT,
	"tipoProgettoId" INTEGER DEFAULT NULL,
	"website" TEXT DEFAULT NULL,
	FOREIGN KEY("tipoProgettoId") REFERENCES "TipoProgetto"("id") ON UPDATE CASCADE ON DELETE
	SET NULL,
		FOREIGN KEY("prioritaId") REFERENCES "Priorita"("id") ON UPDATE CASCADE ON DELETE CASCADE,
		PRIMARY KEY("id" AUTOINCREMENT),
		FOREIGN KEY("responsabileId") REFERENCES "Insegnante"("id") ON UPDATE CASCADE ON DELETE
	SET NULL
);
DROP TABLE IF EXISTS "ObiettivoProgetto";
CREATE TABLE IF NOT EXISTS "ObiettivoProgetto" (
	"progettoId" INTEGER NOT NULL,
	"obiettivoId" INTEGER NOT NULL,
	FOREIGN KEY("progettoId") REFERENCES "Progetto"("id") ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY("obiettivoId") REFERENCES "Obiettivo"("id") ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY("progettoId", "obiettivoId")
);
DROP TABLE IF EXISTS "MetodologiaProgetto";
CREATE TABLE IF NOT EXISTS "MetodologiaProgetto" (
	"progettoId" INTEGER NOT NULL,
	"metodologiaId" INTEGER NOT NULL,
	PRIMARY KEY("progettoId", "metodologiaId"),
	FOREIGN KEY("progettoId") REFERENCES "Progetto"("id") ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY("metodologiaId") REFERENCES "Metodologia"("id") ON UPDATE CASCADE ON DELETE CASCADE
);
DROP TABLE IF EXISTS "PartenariatoProgetto";
CREATE TABLE IF NOT EXISTS "PartenariatoProgetto" (
	"progettoId" INTEGER NOT NULL,
	"istituzioneId" INTEGER NOT NULL,
	"capofila" INTEGER NOT NULL DEFAULT 0 CHECK(
		"capofila" = 0
		OR "capofila" = 1
	),
	FOREIGN KEY("progettoId") REFERENCES "Progetto"("id") ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY("istituzioneId") REFERENCES "Istituzione"("id") ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY("progettoId", "istituzioneId")
);
DROP TABLE IF EXISTS "IndicatoreEfficacia";
CREATE TABLE IF NOT EXISTS "IndicatoreEfficacia" (
	"id" INTEGER NOT NULL,
	"indicatore" TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "EfficaciaProgetto";
CREATE TABLE IF NOT EXISTS "EfficaciaProgetto" (
	"progettoId" INTEGER NOT NULL,
	"indicatoreId" INTEGER NOT NULL,
	"metodoMisurazione" TEXT,
	"risultatoAtteso" TEXT,
	FOREIGN KEY("indicatoreId") REFERENCES "IndicatoreEfficacia"("id") ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY("progettoId", "indicatoreId"),
	FOREIGN KEY("progettoId") REFERENCES "Progetto"("id") ON UPDATE CASCADE ON DELETE CASCADE
);
DROP TABLE IF EXISTS "Destinatario";
CREATE TABLE IF NOT EXISTS "Destinatario" (
	"id" INTEGER NOT NULL,
	"destinatario" TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "DestinatarioProgetto";
CREATE TABLE IF NOT EXISTS "DestinatarioProgetto" (
	"progettoId" INTEGER NOT NULL,
	"destinatarioId" INTEGER NOT NULL,
	FOREIGN KEY("destinatarioId") REFERENCES "Destinatario"("id") ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY("progettoId", "destinatarioId"),
	FOREIGN KEY("progettoId") REFERENCES "Progetto"("id") ON UPDATE CASCADE ON DELETE CASCADE
);
DROP TABLE IF EXISTS "FaseProgetto";
CREATE TABLE IF NOT EXISTS "FaseProgetto" (
	"progettoId" INTEGER NOT NULL,
	"faseId" INTEGER NOT NULL,
	"ordine" INTEGER NOT NULL,
	FOREIGN KEY("progettoId") REFERENCES "Progetto"("id") ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY("progettoId", "faseId"),
	FOREIGN KEY("faseId") REFERENCES "Fase"("id") ON UPDATE CASCADE ON DELETE CASCADE
);
DROP TABLE IF EXISTS "BeneProgetto";
CREATE TABLE IF NOT EXISTS "BeneProgetto" (
	"progettoId" INTEGER NOT NULL,
	"beneId" INTEGER NOT NULL,
	FOREIGN KEY("progettoId") REFERENCES "Progetto"("id") ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY("beneId") REFERENCES "Bene"("id") ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY("progettoId", "beneId")
);
DROP TABLE IF EXISTS "Fase";
CREATE TABLE IF NOT EXISTS "Fase" (
	"id" INTEGER,
	"descrizione" TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "Bene";
CREATE TABLE IF NOT EXISTS "Bene" (
	"id" INTEGER,
	"descrizione" TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "TipoProgetto";
CREATE TABLE IF NOT EXISTS "TipoProgetto" (
	"id" INTEGER,
	"tipo",
	"abbreviazione" TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "Priorita" ("id", "priorita")
VALUES (1, 'Critica'),
	(2, 'Molto alta'),
	(3, 'Alta'),
	(4, 'Media'),
	(5, 'Bassa'),
	(6, 'Molto bassa');
INSERT INTO "Insegnante" ("id", "cognome", "nome")
VALUES (1, 'Massi', 'Gionata'),
	(2, 'Minni', 'Federica'),
	(3, 'Pallotta', 'Emanuele'),
	(4, 'Pomili', 'Gabriella'),
	(5, 'Agostinelli', 'Daniele'),
	(6, 'Cardinale', 'Alessandra');
INSERT INTO "Obiettivo" (
		"id",
		"descrizione",
		"misurabile",
		"obiettivoPadreId"
	)
VALUES (
		1,
		'Gestire la complessità dei problemi di calcolo',
		1,
		NULL
	),
	(2, 'Padroneggiare l''astrazione', 1, 1),
	(
		3,
		'Padroneggiare la programmazione strutturata',
		1,
		1
	),
	(
		4,
		'Introduzione al linguaggio di programmazione',
		1,
		NULL
	),
	(
		5,
		'Padroneggiare i concetti fondamentali dei linguaggi di programmazione',
		1,
		4
	),
	(
		6,
		'Comprendere il funzionamento dell''interprete',
		1,
		4
	),
	(
		7,
		'Definire espressioni primitive e composte',
		1,
		5
	),
	(
		8,
		'Riconoscere e usare l''espressione di chiamata',
		1,
		5
	),
	(9, 'Importare le funzioni delle librerie', 1, 5),
	(
		10,
		'Nominare gli oggetti computazionali, usare l''operatore di assegnamento e definire l''ambiente',
		1,
		5
	),
	(
		11,
		'Comprendere l''ordine di valutazione delle espressioni annidate e produrre un albero delle espressioni',
		1,
		5
	),
	(
		12,
		'Comprendere il concetto di funzione pura e non e quello di effetto collaterale',
		1,
		5
	),
	(13, 'Definire funzioni dell''utente', 1, 4),
	(
		14,
		'Comprendere il funzionamento degli ambienti',
		1,
		13
	),
	(
		15,
		'Chiamare le funzioni definite dall''utente',
		1,
		13
	),
	(
		16,
		'Comprendere il concetto di nome locale e la sua relazione con gli ambienti',
		1,
		13
	),
	(
		17,
		'Scegliere i nomi secondo gli standard',
		1,
		13
	),
	(
		18,
		'Usare le funzioni come astrazioni (scatole nere)',
		1,
		13
	),
	(
		19,
		'Usare gli operatori con notazioni infisse e le parentesi e saperle associare alla notazione funzionale e all''albero delle espressioni',
		1,
		13
	),
	(20, 'Progettare le funzioni', 1, 4),
	(21, 'Documentare le funzioni', 1, 20),
	(
		22,
		'Usare valori predefiniti per gli argomenti di funzione',
		1,
		20
	),
	(
		23,
		'Controllo del flusso di esecuzione di un processo di calcolo',
		1,
		4
	),
	(24, 'Comprendere ed usare le istruzioni', 1, 23),
	(25, 'Comporre le istruzioni', 1, 23),
	(
		26,
		'Comprendere ed usare le assegnazioni locali e gli ambienti',
		1,
		23
	),
	(
		27,
		'Comprendere ed usare l''istruzione condizionale',
		1,
		23
	),
	(
		28,
		'Comprendere e usare l''istruzione iterativa con controllo in testa',
		1,
		23
	),
	(
		29,
		'Validazioni delle funzioni tramite asserzioni e test delle unità',
		1,
		23
	),
	(
		30,
		'Definire e usare funzioni di ordine superiore',
		1,
		4
	),
	(31, 'Usare le funzioni come argomenti', 1, 30),
	(
		32,
		'Usare le funzioni come metodi generali',
		1,
		30
	),
	(33, 'Annidare le funzioni', 1, 30),
	(
		34,
		'Usare le funzioni come valore restituito',
		1,
		30
	),
	(
		35,
		'Approssimare uno zero di funzione con il metodo di Newton',
		1,
		30
	),
	(
		36,
		'Concatenare le funzioni e applicare il currying',
		1,
		30
	),
	(
		37,
		'Definire e applicare le espressioni lambda',
		1,
		30
	),
	(
		38,
		'Creare astrazioni usando le funzioni come oggetti first-class',
		1,
		30
	),
	(
		39,
		'Definire e usare il decoratore di funzione',
		1,
		30
	),
	(40, 'Definire e usare funzioni ricorsive', 1, 4),
	(
		41,
		'Conoscere gli aspetti sintattici e procedurali delle funzioni ricorsive',
		1,
		40
	),
	(42, 'Riconoscere la mutua ricorsione', 1, 40),
	(43, 'Stampare nelle funzioni ricorsive', 1, 40),
	(
		44,
		'Saper progettare algoritmi che generano processi alberi di ricorsione',
		1,
		40
	);
INSERT INTO "Metodologia" ("id", "descrizione", "riferimento")
VALUES (
		1,
		'Learning through implementation',
		'https://cs61a.org/'
	),
	(2, 'Project Based Learning', ''),
	(
		3,
		'Fable Based Learning',
		'https://le.unimelb.edu.au/showcase/fable-based-learning'
	);
INSERT INTO "TipoAttivita" ("id", "descrizione", "frontale")
VALUES (1, 'Lezione frontale', 1);
INSERT INTO "Progetto" (
		"id",
		"codice",
		"denominazione",
		"prioritaId",
		"responsabileId",
		"considerazioni",
		"tipoProgettoId",
		"website"
	)
VALUES (
		1,
		'ICDL',
		'ICLD',
		1,
		1,
		'Stima ore frontali: 20 ore. Si stimano che le attività siano quelle di: relazione con AICA, pubblicità della certificazione e delle date di esame mediante circolare, caricamento dei dati degli iscritti e sorveglianza durante le prove, cadenza mensile delle prove. Le attività di promozione dell''iniziativa saranno svolte da tutti gli insegnanti del dipartimento di Informatica. La gestione delle iscrizioni sarà effettuata da ... Gli esami saranno sorvegliati dagli insegnati in base alle loro esigenze',
		1,
		'https://www.icdl.it/'
	),
	(
		2,
		'FLL',
		'First Lego League',
		1,
		1,
		'Stima ore frontali: 20 ore. Si stima un impegno pomeridiano di almeno tre ore settimanali con le classi coinvolte nell''A.S. 2022-23 e aperto a nuovi interessati.',
		6,
		'https://www.fll-italia.it/fllitalia_aboutFLL'
	),
	(
		3,
		'OliCyber',
		'Olimpiadi italiane della CyberSicurezza',
		2,
		1,
		'Stima ore frontali: 10 ore. Impegno extra-curricolare di almeno un paio d''ore settimanali. Tutti abbiamo svolto i corsi base o avanzato del CINI su questa competizione. A  livello curricolare proporremo la piattaforma di allenamento https://training.olicyber.it/ e presenteremo lo svolgimento di qualche challenge.',
		6,
		'https://olicyber.it/'
	),
	(
		4,
		'Bebras',
		'Bebras dell''Informatica',
		2,
		1,
		'Il percorso che si può svolgere in orario scolastico al fine di avvicinare gli studenti all''informatica. I risultati possono essere analizzati per verificare lo sviluppo delle capacità di problem solving.  Gli esempi proposti possono essere usati in una didattica Problem Based per affrontare in modo attivo alcuni argomenti delle programmazioni didattiche. Deve essere riconosciuto il tempo per la registrazione degli studenti, la produzione degli attestati e l''analisi dei risultati. Agli insegnati che partecipano da più anni è consentita la proposizione di quesiti che sono soggetti a valutazione da parte del comitato organizzatore (Univ. Statale di Milano, gruppo Aladdin).',
		6,
		'https://bebras.it/'
	),
	(
		5,
		'OII',
		'Campionati italiani e internazionali di Informatica',
		2,
		1,
		'Stima ore frontali: 16 + 4 ore. Il percorso, in più fasi, include una selezione scolastica che potrebbe essere complessa da organizzare, almeno con i numeri di partecipanti che abbiamo sempre tentato di avere fin dal 2015, e una fase territoriale in genere gestita dal Volterra. Una parte di preparazione viene svolta in orario curricolare ma le tecniche algoritmiche non sono parte dei programmi. Il corso di formazione sulle OII è stato seguito da Massi nel 2017.',
		6,
		'https://www.olimpiadi-informatica.it/'
	),
	(
		6,
		'CyberChallenge',
		'CyberChallenge.it',
		2,
		1,
		'Il percorso è estremante selettivo. Siamo riusciti, in passato, a far selezionare pochissimi studenti per il corso di formazione  presso l''Università Politecnica delle Marche. Gli ultimi ammessi, a memoria, sono stati 4 studenti della 4Q nell''A.S. 20-21. In assenza di risorse, ci limiteremo a fare pubblicità dell''evento.',
		6,
		'https://cyberchallenge.it/'
	),
	(
		7,
		'CyberTrials',
		'CyberTrials',
		2,
		1,
		'Il percorso è destinato alle sole ragazze. Vale come 40 ore di formazione PCTO e devono essere redatte le convenzioni con il CINI. Ad ora abbiamo fatto formare 5 studentesse. Ci limiteremo alla pubblicità del percorso, alla compilazione delle convenzioni e alle relazioni con il comitato organizzatore.',
		6,
		'https://www.cybertrials.it/'
	),
	(
		8,
		'OIS',
		'Campionati di Informatica a Squadre',
		3,
		1,
		'Il percorso inizia quattro gare nazionali in orario pomeridiano. Le gare hanno lo stile della fase territoriale dei Campionati italiani e internazionali di Informatica. Per preparare gli studenti serve uno studio approfondito, non svolto in orario curricolare, delle tecniche algoritmiche.',
		6,
		'https://sites.google.com/aldini.istruzioneer.it/olimpiadi-informatica-squadre/homepage'
	),
	(
		9,
		'OPS-I',
		'Olimpiadi del Problem Solving - Individuale',
		4,
		1,
		'Da valutare con dip. Matematica, in particolare con Lillini',
		6,
		'https://www.olimpiadiproblemsolving.it/web/index.php'
	),
	(
		10,
		'OPS-S',
		'Olimpiadi del Problem Solving - a Squadre',
		4,
		1,
		'Da valutare con dip. Matematica, in particolare con Lillini',
		6,
		'https://www.olimpiadiproblemsolving.it/web/index.php'
	),
	(
		11,
		'PhyComp',
		'Laboratorio di Physical Computing',
		4,
		1,
		'Abbiamo acquistato, e stiamo acquistando, dispositivi per creare sistemi fisici interattivi, come le schede Arduino e i micro:bit. Queste schede elettroniche si programmano con i linguaggi inseriti nelle programmazioni e che sono presentati nei libri di testo. Useremo queste tecnologie nella didattica curricolare, laddove possibile. Sono auspicabili laboratori pomeridiani aperti a tutti per completare l''offerta del PTOF alle voci "Robotica educativa" e "Pensiero computazionale".',
		4,
		NULL
	),
	(
		12,
		'NumericalRecipes',
		'Laboratorio di Calcolo numerico',
		4,
		1,
		'Durante il quinto anno del Liceo Scientifico - Scienze applicate si insegnano alcuni algoritmi di calcolo numerico e come Istituto ci siamo dotati di un ambiente di calcolo sul server d''Istituto per la didattica di questa disciplina (GNU Octave su Jupyter Lab). I laboratori possono essere realizzati in orario curricolare ma potrebbero essere proposti a tutti in orario extracurricolare. Tematiche rilevanti: (a) calcolo della radice quadrata [metodo di Erone di Alessandria, di Newton senza derivate, di bisezione]; (b) calcolo delle radici di funzioni non lineari [bisezione, corde, secanti, tangenti]; (c) derivazione numerica [scoperta degli errori di approssimazione]; (d) ottimizzazione 1-dimensionale [Fibonacci, Newton per l''ottimizzazione]; (e) regressione lineare e discesa lungo il gradiente; (f) quadratura.',
		4,
		NULL
	),
	(
		13,
		'SQLMurder',
		'Laboratorio di Basi di dati - Omicidio a SQL City',
		4,
		1,
		'Durante il quarto anno di tutti gli indirizzi viene proposto, con diversi gradi di approfondimento, l''argomento delle basi di dati relazionali. Ci siamo dotati di un ambiente di calcolo per la didattica (SQLite su Jupyter Lab) e possiamo usare la tecnica della gamification per risolvere il caso del misterioso omicidio a SQL City. Il testo del gioco e la base di dati in formato SQLite sono alla pagina: https://github.com/NUKnightLab/sql-mysteries',
		4,
		'https://github.com/NUKnightLab/sql-mysteries'
	),
	(
		14,
		'SQLDeadRecord',
		'Laboratorio di Basi di dati - Condanne capitali',
		4,
		1,
		'Durante il quarto anno di tutti gli indirizzi viene proposto, con diversi gradi di approfondimento, l''argomento delle basi di dati relazionali. Ci siamo dotati di un ambiente di calcolo per la didattica (SQLite su Jupyter Lab) Nell''ambito dell''educazione civica possiamo analizzare i dati sulle condanne capitali del Texas dal 1976 ad oggi. Il testo e la base di dati in formato SQLite sono alla pagina: https://selectstarsql.com/',
		4,
		'https://selectstarsql.com/'
	),
	(
		15,
		'FabLab',
		'Laboratorio di Fabbricazione digitale',
		4,
		1,
		'Abbiamo un FabLab che è una risorsa da sfruttare.Nella proposta progettuale verrebbe impiegato esclusivamente per la competizione First Lego League.Se chi avrà la cattedra che era affidata a Cesetti riuscirà a proporre delle attività di fabbricazione digitale potremmo offrire un supporto (Massi e Pomili hanno seguito almeno un corso sui FabLab).',
		3,
		NULL
	),
	(
		16,
		'LinearAlgebra',
		'Laboratorio di Algebra Lineare e Programmazione Lineare',
		4,
		1,
		'Destinatari i ragazzi del quinto anno Scienze Applicate, opzione informatica e SIA.Materiale preparato negli anni passati da Massi',
		4,
		NULL
	),
	(
		17,
		' MiniZinc ',
		' Laboratorio di Modellizzazione Discreta ',
		4,
		1,
		'Destinatari i ragazzi del quinto anno Scienze Applicate, opzione informatica e SIA.Sulla base del corso https://www.coursera.org/learn/basic-modeling/home/welcome e del testo https://www.springer.com/gp/book/9783030417314 ',
		4,
		'https://www.coursera.org/learn/basic-modeling/home/welcome'
	),
	(
		18,
		'NAO',
		'Nao Challenge',
		5,
		1,
		'Abbiamo partecipato in passato ma sia il percorso formativo che lo strumento non ci avevano convinti.',
		6,
		'https://www.naochallenge.it/'
	),
	(
		19,
		'FOSS',
		'Laboratorio di Free e Open Source Software',
		4,
		1,
		'Stiamo inserendo tante piattaforme HW e SW Open Source e Free che, nell '' ottica delle politiche europee, dovrebbero andare a sostituire il software proprietario.Quando avremo il nuovo laboratorio, sperando in una maggiore disponibilità oraria dei docenti, si potrebbe proporre un laboratorio con software libero in sostituzione a quello proprietario.Si potrebbe partire con il software per l''ufficio usato nel percorso libero della ICDL.',
		4,
		NULL
	),
	(
		20,
		'Networking',
		'Laboratorio di reti',
		4,
		1,
		'Quando avremo il nuovo laboratorio potremmo realizzare un piccolo laboratorio per la sperimentazione delle reti di computer.',
		4,
		NULL
	),
	(
		21,
		'GreyLiterature',
		'Laboratorio di scrittura tecnico-scientifica',
		4,
		1,
		'È importante fornire degli strumenti di scrittura tecnico-scientifica. Si propone un mini-corso su ``Jupyter Book`` e ``MyST Markdown``. Si veda https://executablebooks.org/en/latest/ Destinatari gli studenti del liceo scientifico.',
		4,
		'https://executablebooks.org/en/latest/'
	),
	(
		22,
		'Svelte',
		'Laboratorio di Web-App',
		4,
		1,
		'È importante fornire degli strumenti per la creazione di semplici web - app. Si propone un mini-corso su ``Svelte``. Si veda https://svelte.dev/ Destinatari: studenti ITE SIA,
		LS.',
		4,
		NULL
	),
	(
		23,
		'SICPy',
		'Formazione interna sulla didattica di struttura ed interpretazione dei programmi',
		4,
		1,
		' Stima ore frontali: 16 ore.E'' importante uniformare la presentazione dei linguaggi di programmazione affinché tutti gli studenti sappiano usare un linguaggio di programmazione,
		nello specifico il Python,
		per rappresentare le idee sui processi di calcolo.Il corso si propone di illustrare la didattica della programmazione nello spirito di SICP,
		usando il linguaggio Python (https://www.composingprograms.com/) e PythonTutor (https://pythontutor.com/)',
		5,
		NULL
	),
	(
		24,
		'DataScience',
		'Formazione interna sulla didattica della Data Science',
		4,
		1,
		'Una formazione interna sulla base di https://inferentialthinking.com/',
		5,
		NULL
	),
	(
		25,
		'LinuxDay',
		'Organizzazione del Linux Day',
		5,
		1,
		'Con il nuovo laboratorio, con mini - PC aventi il Sistema Operativo GNU / Linux, si potrebbe aprire la scuola agli esterni organizzando un Linux Day che metta al centro le tecnologie libere per la scuola.',
		4,
		'https://www.linuxday.it/'
	),
	(
		26,
		'FUSS-ATA-DOC',
		'Formazione FUSS Server e client',
		3,
		1,
		'Con l ''introduzione di FUSS Server per la gestione dei laboratori d''Informatica è urgente la formazione su questa tecnologia',
		5,
		NULL
	),
	(
		27,
		' RPi-DOC ',
		' Formazione interna Raspberry Pi ',
		3,
		1,
		' Stima ore frontali: 6 ore.Con il nuovo laboratorio bisogna saper usare le Raspberry Pi',
		4,
		NULL
	),
	(
		28,
		'PhyComp-DOC',
		'Formazione interna dispositivi embedded: Arduino, micro :bit, NAO...',
		3,
		1,
		'Stima ore frontali: 10 ore.Bisogna saper usare le tecnologie che abbiamo acquistato',
		4,
		NULL
	),
	(
		29,
		'UniCamGioco',
		'INFORMATICA x GIOCO = FANTASIA + REGOLE',
		4,
		1,
		'Stimate 5 ore frontali.Sentire Barbara Re',
		6,
		'https://computerscience.unicam.it/informatica-gioco-fantasia-regole'
	),
	(
		30,
		'Jupyter-DOC',
		'Formazione interna su Insegnamento e apprendimento con Jupyter',
		4,
		1,
		' Stima ore frontali: 6.',
		4,
		'https://jupyter4edu.github.io/jupyter-edu-book/'
	),
	(
		31,
		' CodeWeek ',
		' Settimana europea della programmazione ',
		3,
		1,
		' Stima ore frontali: 4 ',
		1,
		'https://codeweek.eu/'
	),
	(
		32,
		' PCTOWebApp ',
		' Una web app per gestire i PCTO - Una nuova parte del Sistema Informativo per il Savoia Benincasa ',
		5,
		1,
		' Stima ore frontalli: 30 divise in 6 ore di elicitazione e analisi requisiti;
4 ore di progettazione e valutazione del database;
4 ore di progettazione della web app;
12 ore di codifica del codice sorgente;
4 ore di validazione e correzione dei bug.',
		4,
		NULL
	),
	(
		33,
		' RegistroWebApp ',
		' Un registro elettronico per gestire lagestire valutazione ',
		5,
		1,
		' Stima 30 ore frontali ',
		1,
		NULL
	);
INSERT INTO "TipoProgetto" ("id", "tipo", "abbreviazione")
VALUES (1, 'Certificazione', NULL),
	(
		2,
		'Ministeriale - Ampliamento offerta formativa',
		NULL
	),
	(
		3,
		'Interno - Ampliamento offerta formativa',
		NULL
	),
	(
		4,
		'Dipartimentale - Ampliamento offerta formativa',
		NULL
	),
	(5, 'Dipartimentale - Formazione interna', NULL),
	(
		6,
		'Progetto abbinato a competizione/concorso',
		NULL
	);
COMMIT;