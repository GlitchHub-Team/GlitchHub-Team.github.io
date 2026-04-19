# Messaggio di hello
Il microservizio **Gateway** invia un messaggio di hello al momento della creazione e al riavvio di un gateway simulato.

Il **messaggio di hello** viene inviato su una stream{{gloss}} di **NATS JetStream** per garantire che se il destinatario non è attivo al momento dell'invio del messaggio, questo venga comunque ricevuto al momento dell'attivazione del destinatario stesso.

Il messaggio in questione ha lo scopo di comunicare la **public key** del gateway simulato al **backend** del sistema, in modo che quest'ultimo possa renderla visibile all'utente per effettuare l'operazione di creazione delle credenziali per il commissioning del gateway.  
Infatti la **public key** del gateway simulato è fondamentale per la creazione delle credenziali **NATS**, dato che il gateway custodisce la **private key**, mentre la **public key** è inserita nel **JWT** di commissioning affinché solo il gateway che si vuole commissionare possa utilizzare il **JWT** in questione per autenticarsi su NATS.

## Subject e stream NATS
Il messaggio di hello viene inviato sul subject NATS `gateway.hello.<gatewayId>` e viene salvato nella stream NATS `GATEWAY_HELLO_STREAM`, la quale è impostata con la *retention policy*{{gloss}} **WorkQueue**{{gloss}}, così da garantire che il messaggio rimanga all'interno di NATS fino a che qualcuno non lo consumi e salvi localmente la **public key** del gateway simulato.

## Struttura messaggio
Il messaggio di hello ha la seguente struttura:
```json
{
  "gatewayId": "string", // Identificativo univoco di tipo uuid del gateway simulato
  "publicIdentifier": "string" // Public key del gateway simulato generata con algoritmo Ed25519
}
```

## Risposta
Il messaggio di hello non prevede una risposta, una volta fatto il publish **JetStream** garantisce che il messaggio sia salvato all'interno della stream.
