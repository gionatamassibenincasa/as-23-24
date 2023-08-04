// @ts-check

enum Priorita {
  Critica = "Critica",
  Alta = "Alta",
  Media = "Media",
  Bassa = "Bassa",
  Infima = "Molto bassa",
}

enum Insegnante {
  Massi = "Massi",
  Minni = "Minni",
  Pallotta = "Pallotta",
  Pomili = "Pomili",
}

const elencoInsegnanti = (arr: Insegnante[]): string => {
  //return arr.map((i) => insegnante[i]).join(", ");
  return arr.join(", ");
};

class Progetto {
  progetto: string;
  priorita: Priorita;
  referente: Insegnante;
  personale: Insegnante[];
  sito: string;
  considerazioni: string;
}

const progetti: Progetto[] = [
  {
    progetto: "ICDL",
    priorita: Priorita.Critica,
    referente: Insegnante.Massi,
    personale: [
      Insegnante.Massi,
      Insegnante.Minni,
      Insegnante.Pallotta,
      Insegnante.Pomili,
    ],
    sito: "https://www.icdl.it/",
    considerazioni: `Si stimano che le attività siano quelle di: relazione con AICA, pubblicità della certificazione e delle date di esame mediante circolare, caricamento dei dati degli iscritti e sorveglianza durante le prove, cadenza mensile delle prove.`,
  },
  {
    progetto: "First Lego League",
    priorita: Priorita.Critica,
    referente: Insegnante.Massi,
    personale: [
      Insegnante.Massi,
      Insegnante.Minni,
      Insegnante.Pallotta,
      Insegnante.Pomili,
    ],
    sito: "https://www.fll-italia.it/fll_home.jsp",
    considerazioni:
      "Si stima un impegno pomeridiano di almeno tre ore settimanali con le classi coinvolte in passato e interessati. Abbiano le squadre dell'anno passato, tutte di Cesetti.",
  },
  {
    progetto: "Olimpiadi italiane della CyberSicurezza",
    priorita: Priorita.Alta,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "https://olicyber.it/",
    considerazioni:
      "Per cercare buoni risultati (tre ammessi al corso di formazione) occorre un impegno extra-curricolare di un paio d'ore settimanali. La proposta è condivisa con Lillini e Bobtcheva che sono interessati agli aspetti matematici della criptografia. Tutti abbiamo svolto i corsi base o avanzato del CINI su questa competizione. A livello curricolare proporremo la piattaforma di allenamento https://training.olicyber.it/ e presenteremo lo svolgimento di qualche challenge. Resta un solo studenti dei migliori partecipanti dell'A.S. 22-23.",
  },
  {
    progetto: "Bebras dell'Informatica",
    priorita: Priorita.Alta,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "https://bebras.it/",
    considerazioni:
      "Percorso che si può svolgere in orario scolastico per l'avvicinamento all'informatica e per l'orientamento. I risultati nel corso del tempo possono essere usati per verificare lo sviluppo delle capacità di problem solving. Gli esempi proposti possono essere usati in una didattica Problem Based per affrontare in modo attivo alcuni argomenti delle programmazioni. Richiede tempo e impegno la registrazione degli studenti e l'analisi dei risultati. Agli insegnati che partecipano da più anni è consentita la proposizione di quesiti che sono soggetti a valutazione da parte del comitato organizzatore (Univ. Statale di Milano, gruppo Aladdin).",
  },
  {
    progetto: "Campionati italiani e internazionali di Informatica",
    priorita: Priorita.Alta,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "https://www.olimpiadi-informatica.it/",
    considerazioni:
      "Il percorso, in più fasi, include una selezione scolastica che è molto complessa da organizzare, almeno con i numeri di partecipanti che abbiamo sempre tentato di avere fin dal 2015, e una fase territoriale in genere gestita dal Volterra. Una parte di preparazione viene svolta in orario curricolare ma le tecniche algoritmiche non sono parte dei programmi. Solo Massi ha seguito il corso nel 2017.",
  },
  {
    progetto: "CyberChallenge",
    priorita: Priorita.Media,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "https://cyberchallenge.it/",
    considerazioni:
      "Il percorso è estremante selettivo anche se in passato siamo riusciti a far selezionare vari studenti dall'Università Politecnica delle Marche per i corsi avanzati in materia di CyberSicurezza. Se non avremo risorse ci limiteremo alla pubblicità dell'evento. Gli ultimi ammessi, a memoria, sono stati 4 studenti della 4Q nell'A.S. 21-22.",
  },
  {
    progetto: "CyberTrials (valido come 40 ore PCTO)",
    priorita: Priorita.Media,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "https://www.cybertrials.it/",
    considerazioni:
      "Il percorso è destinato alle sole ragazze. Ad ora abbiamo fatto formare 5 studentesse di cui una avrebbe potuto partecipare alla finale nazionale. Ci limiteremo alla pubblicità del percorso, alla compilazione delle convenzioni e alle relazioni con il comitato organizzatore.",
  },
  {
    progetto: "Campionati di Informatica a Squadre",
    priorita: Priorita.Media,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "https://sites.google.com/aldini.istruzioneer.it/olimpiadi-informatica-squadre/homepage",
    considerazioni:
      "Percorso che include quattro gare in orario pomeridiano sullo stile della fase territoriale dei Campionati italiani e internazionali di Informatica. Richiederebbe un lavoro aggiuntivo oltre a quello curricolare. Abbiamo tre squadre dell'anno passato che potrebbero continuare a partecipare. Restano 3 squadre di studenti di Cesetti.",
  },
  {
    progetto: "Olimpiadi del Problem Solving - Individuale",
    priorita: Priorita.Bassa,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "https://www.olimpiadiproblemsolving.it/web/index.php",
    considerazioni:
      "Da valutare con dip. Matematica, in particolare con Lillini",
  },
  {
    progetto: "Olimpiadi del Problem Solving - a Squadre",
    priorita: Priorita.Bassa,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "https://www.olimpiadiproblemsolving.it/web/index.php",
    considerazioni:
      "Da valutare con dip. Matematica, in particolare con Lillini",
  },
  {
    progetto: "Laboratorio di Physical Computing",
    priorita: Priorita.Infima,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "",
    considerazioni:
      "Abbiamo acquistato, e stiamo acquistando, dispositivi per creare sistemi fisici interattivi, come le schede Arduino e i micro:bit. Queste schede elettroniche si programmano con i linguaggi abbiamo inserito nelle programmazioni e che sono presentati nei libri di testo. Useremo queste tecnologie nella didattica curricolare, laddove possibile.",
  },
  {
    progetto: "Laboratorio di Calcolo numerico",
    priorita: Priorita.Infima,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "",
    considerazioni:
      "Durante il quinto anno del Liceo Scientifico - Scienze applicate insegniamo alcuni algoritmi di calcolo numerico e ci siamo dotati di un ambiente di calcolo sul server d'Istituto per la didattica di questa disciplina (GNU Octave su Jupyter Lab). Orario curricolare.",
  },
  {
    progetto: "Laboratorio di Basi di dati",
    priorita: Priorita.Infima,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "",
    considerazioni:
      "Durante il quarto anno di tutti gli indirizzi viene proposto, con diversi gradi di approfondimento, l'argomento delle basi di dati relazionali. Ci siamo dotati di un ambiente di calcolo per la didattica (SQLite su Jupyter Lab) e dovremmo tradurre due attività, una che usa la tecnica della gamification (risolvere il caso del misterioso omicidio a SQL City: https://github.com/NUKnightLab/sql-mysteries) e, nell'ambito dell'educazione civica, il testo interattivo https://selectstarsql.com/ che usa come esempio i dati sulle condanne capitali del Texas dal 1976.",
  },
  {
    progetto: "Laboratorio di Fabbricazione digitale",
    priorita: Priorita.Infima,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "",
    considerazioni:
      "Abbiamo un FabLab che è una risorsa da sfruttare. Nella proposta progettuale verrebbe impiegato esclusivamente per la competizione First Lego League. Se chi avrà la cattedra che era affidata a Cesetti riuscirà a proporre delle attività di fabbricazione digitale potremmo offrire un supporto (Massi e Pomili hanno seguito almeno un corso sui FabLab).",
  },
  {
    progetto: "Laboratorio di Algebra Lineare e Programmazione Lineare",
    priorita: Priorita.Infima,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "",
    considerazioni:
      "Destinatari i ragazzi del quinto anno Scienze Applicate, opzione informatica e SIA.",
  },
  {
    progetto: "Laboratorio di Modellizzazione Discreta",
    priorita: Priorita.Infima,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "",
    considerazioni:
      "Destinatari i ragazzi del quinto anno Scienze Applicate, opzione informatica e SIA.",
  },
  {
    progetto: "NAO Challenge",
    priorita: Priorita.Infima,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "https://www.naochallenge.it/",
    considerazioni:
      "Abbiamo partecipato in passato, anche dato il costo del robot, ma il percorso formativo con lo strumento ci era sembrato poco convincente, anche per problemi con l'ambiente di sviluppo.",
  },
  {
    progetto: "Organizzazione Linux Day",
    priorita: Priorita.Infima,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "https://www.linuxday.it/",
    considerazioni:
      "Con il nuovo laboratorio, con mini-PC aventi il Sistema Operativo GNU/Linux, si potrebbe aprire la scuola agli esterni organizzando un Linux Day che metta al centro le tecnologie libere per la scuola.",
  },
  {
    progetto: "Laboratorio di Free Software",
    priorita: Priorita.Infima,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "",
    considerazioni:
      "Stiamo inserendo tante piattaforme HW e SW Open Source e Free che, nell'ottica delle politiche europee, dovrebbero andare a sostituire il software proprietario. Quando avremo il nuovo laboratorio, sperando in una maggiore disponibilità oraria dei docenti, si potrebbe proporre un laboratorio con software libero in sostituzione a quello proprietario.",
  },
  {
    progetto: "Laboratorio di reti",
    priorita: Priorita.Infima,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi, Insegnante.Minni, Insegnante.Pallotta],
    sito: "",
    considerazioni:
      "Quando avremo il nuovo laboratorio potremmo realizzare un piccolo laboratorio per la sperimentazione delle reti di computer.",
  },
  {
    progetto: "Laboratorio di scrittura tecnico-scientifica",
    priorita: Priorita.Infima,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi],
    sito: "",
    considerazioni:
      "È importante fornire degli strumenti di scrittura tecnico-scientifica. Si propone un mini-corso su ``Jupyter Book`` e ``MyST Markdown``. Si veda https://executablebooks.org/en/latest/",
  },
  {
    progetto: "Laboratorio di web-app",
    priorita: Priorita.Infima,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi],
    sito: "",
    considerazioni:
      "È importante fornire degli strumenti per la creazione di semplici web-app. Si propone un mini-corso su ``Svelte``. Si veda https://svelte.dev/",
  },
  {
    progetto: "Laboratorio sulla struttura ed interpretazione dei programmi",
    priorita: Priorita.Infima,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi],
    sito: "",
    considerazioni: "Sulla spalle si SICP.",
  },
  {
    progetto: "Laboratorio di Data Science",
    priorita: Priorita.Infima,
    referente: Insegnante.Massi,
    personale: [Insegnante.Massi],
    sito: "",
    considerazioni: "Sulla spalle si https://inferentialthinking.com/.",
  },
];

let adoc = `= Proposte progettuali del Dipartimento di Informatica
Gionata Massi <gionata.massi@savoiabenincasa.it
2023-07-08: proposta iniziale
:experimental:

== Progetti

|===
|Progetto | Priorità | Referente| Personale | Sito
`;

progetti.forEach(
  (p) =>
    (adoc += `| ${p.progetto} | ${p.priorita} | ${
      p.referente
    } | ${elencoInsegnanti(p.personale)} | ${p.sito}\n`)
);

adoc += "|===\n\n";

adoc += "== Considerazioni\n\n";

progetti.forEach((p) => {
  adoc += `${p.progetto}:: ${p.considerazioni}\n`;
});

console.log(adoc);
