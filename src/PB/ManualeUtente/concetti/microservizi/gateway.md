# Gateway
Il microservizio **Gateway** ha lo scopo di gestire più gateway e sensori simulati, fungendo da punto di ingresso per i comandi per questi ultimi e da punti di uscita per i dati prodotti dai sensori.   
Inoltre garantisce che, in caso di crash o riavvio del microservizio, le configurazioni dei gateway e dei sensori simulati vengano mantenute, e che i gateway e sensori simulati riprendano a funzionare correttamente. 

## Funzioni principali
- Creazione e eliminazione di gateway e sensori simulati.
- Pubblicazione dei dati prodotti dai sensori simulati sul message broker NATS JetStream{{gloss}}.
- Commissioning e decommissioning dei gateway alla ricezione dei relativi comandi
- Ricezione di comandi per i gateway e i sensori simulati, e conseguente instradamento verso i destinatari corretti.
- Configurazione persistente dei gateway e dei sensori simulati.
- Buffering interno dei dati prodotti dai sensori simulati.

## Scopo
Offrire un servizio di simulazione gateway e sensori che consenta di simulare le principali funzionalità di questi ultimi in assenza di dispositivi fisici.