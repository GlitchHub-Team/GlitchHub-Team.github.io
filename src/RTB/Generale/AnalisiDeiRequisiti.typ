#import "../../Templates/templateDocumentiGenerici.typ": report

#show: report.with(
    titolo: "Analisi dei Requisiti",
    stato: "Bozza",
    versione: "0.1.0",
    registro-modifiche: (
        ("0.1.0","15/11/2025","Hossam Ezzemouri","-","Stesura introduzione e inizio dei Casi d'uso"),
    ),

    distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
    htmlId: "Analisi-dei-Requisiti",
    verificatore-interno: "",
    left-signature: "",
    tipo-documento: "Analisi dei Requisiti",
)

= Introduzione
Questo documento ha come obiettivo quello di fornire informazioni  dettagliate e chiare riguardo i requisiti che il software progettato possiede: questo per poter esser un punto di riferimento sia per i soggetti coinvolti nello sviluppo sia per gli appaltanti, consentendo ad entrambi di verificare che il progetto soddisfi i requisiti funzionali e non funzionali esplicitati.

== Panoramica del prodotto
Il progetto tratta la realizzazione di un sistema distribuito per l'acquisizione, l'elaborazione e la gestione dei dati provenienti da sensori Bluetooth Low Energy (BLE). In un contesto in cui la raccolta capillare (e affidabile soprattutto) rappresenta un elemento centrale per varie applicazioni (industriali,logistiche,sanitarie, ecc...), il capitolato evidenzia la necessità di una piattaforma in grado di ricevere e normalizzare dati eterogenei provenienti da un numero non trascurabile di sensori, garantendo al contempo sicurezza e scalabilità.

== Architettura
L'architettura prevista si articola in tre principali livelli che collaborano per garantire un flusso dati continuo e sicuro:
- *Sensori BLE*
- *Gateway BLE WiFI*
- *Cloud*

I sensori svolgono la funzione di acquisizione locale mentre i gateway aggregano e inoltrano i dati verso il cloud, che rappresenta il core del sistema. Quest'ultimo si occupa di archiviazione, gestione dei tenant, esposizione delle API e monitoraggio tramite dashboard.

= Casi d'uso
== Introduzione
La definizione dei casi d'uso rappresenta una fase fondamentale nell'analisi dei requisiti di sistema previsto dal capitolato M31. I casi d'uso permettono di descrivere in maniera chiara e strutturata come gli *attori* interagiscono con il sistema per raggiungere un determinato obiettivo.

Come scritto precedentemente, il sistema si compone di più livelli e coinvolge attori eterogenei,sia umani che automatici. L' utilizzo dei casi d'uso consente quindi di modellare le interazioni tra tali attori, traducendo i requisiti funzionali individuati in scenari operativi concreti. Essi permettono di focalizzarsi quindi sugli aspetti fondamentali del sistema, quali l'acquisizione e l'aggregazione dei dati,l'inoltro verso il cloud, il provisioning sicuro dei dispositivi, la gestione multi-tenant e la visualizzazione dei dati tramite dashboard.
