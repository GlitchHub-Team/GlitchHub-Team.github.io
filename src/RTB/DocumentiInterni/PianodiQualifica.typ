#import "../../Templates/templateDocumentiGenerici.typ": *
#show ref: underline

// NOTA: se dovete riferirvi a delle sezioni del testo (ad es. scrivere Sezione 1.2.3), usate ref e label
#show: report.with(
  titolo: "Norme di Progetto",
  stato: "Bozza",
  versione: "0.0.1",
  registro-modifiche: (
    ("0.0.1", "21/12/2025", "-", "Siria Salvalaio", "Bozza prime metriche"),
  ),

  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "RTB-DocumentiInterni",
  verificatore-interno: "",
  left-signature: "",
  tipo-documento: "Piano di Qualifica",
)

= Introduzione <introduzione>
== Finalità del documento
Questo documento, #gloss[Piano di Qualifica], rappresenta un riferimento fondamentale che organizza e coordina tutte le attività di qualifica per il prodotto software, integrando pianificazione, verifica e miglioramento.
Il Piano di qualifica determina 3 elementi essenziali:
- Il *Piano di Qualità*, cioò l'insieme delle attività e obiettivi di qualità
- Le attività di *Controllo di qualità*
- Le iniziative di *Miglioramento continuo*

== Riferimenti
=== Riferimenti normativi
// Norme di Progetto?
- *Norme di Progetto* \
  https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/NormeProgetto.pdf
- *Capitolato di appalto C7, "Sistemi di acquisizione dati da sensori* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf
- *Piano di Progetto* \
  https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/PianoDiProgetto.pdf

=== Riferimenti informativi
- *Glossario*
  https://glitchhub-team.github.io/pdf/glossary.pdf
- *Slide T07 - Qualità del software* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T07.pdf
- *Slide T08 - Qualità del software* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T07.pdf

= Metriche di Qualità del Processo
Le metriche di qualità del processo misurano l'efficacia, l'efficienza e il controllo delle attività necessarie per sviluppare, gestire e consegnare il prodotto software. Il loro scopo è di monitorare l'aderenza alla pianificazione, la stabilità dei processi, la sostenibilità dei costi e di migliorare costantemente i propri risultati. Queste metriche non valutano il prodotto finito, ma il modo in cui il prodotto viene realizzato.

== Fornitura
- *BLABLA - Planned Cost* \
  Costo blabla
- *Actual Cost*
- *Earned Value*
- *Planned Value*
- *Budget ai Completion*
- *Estimated at Completion*
- *Estimated to Complete*
- ??

//tabella Metrica-Nome-ValoreAccettabile-ValoreOttimo + descrizione tabella sotto

== Sviluppo
- Requirements Stability Index
- Schedule Variance

== Documentazione
- Indice di Gulpease
- Correttezza ortografica

== Verifica
- Code coverage
- Test Success rate

== Gestione della qualità
- Quality metrics satisfied

== Gestione dei processi
- Time efficiency

= Metriche di Qualità del Prodotto
Le metriche di qualità del prodotto misurano le proprietà interne ed esterne del prodotto software finale: comportamento funzionale, affidabilità, usabilità, l'efficienza, la manutenibilità e la sicurezza. Il loro scopo è di verificare quanto il prodotto soddifa i requisiti che si aspetta l'utente, quanto è robusto in condizioni reali e quanto può essere compreso, modificato, testato e protetto. In sintesi, valutano la qualità del software in esecuzione in circostanze reali.

== Funzionalità
- Copertura requisiti obbligatori
- Copertura requisiti opzionali

== Affidabilità
- Code covarage
- Statement coverage
- Failure tolerance
- Failure frequency
- Mean Time Beetween Failures
- Mean Time beetwen failure and restoration data

== Usabilità
- Learning time
- Mistakes the user makes
- Task success rate

== Efficienza
- Response time
- Use of resources (memory)

== Manutenibilità
- Analyzability (tempo che ci metti per trovare un errore nel codice -> vuol dire che è strutturato bene)
- Modifiability (capacità del prodotto di permettere di implementare funzionalità aggiuntive)
- Testability (capacità di essere facimente testato dopo modifiche al software)

== Sicurezza
- Authentication failure rate
- Data encryption

= Metriche di Testing

= Cruscotto di Valutazione

= Iniziative di miglioramento