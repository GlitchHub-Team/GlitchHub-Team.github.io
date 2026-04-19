# Risoluzione problemi e segnalazioni
Il sistema è progettato per fornire feedback immediati in caso di anomalie operative o errori di configurazione, utilizzando banner informativi e indicatori di stato dinamici.

## Gestione degli errori nell'interfaccia
In presenza di errori restituiti dalle **#gloss("API")**{{gloss}} (es. permessi insufficienti, timeout del server o parametri non validi), l'applicazione mostra un banner rosso nella parte superiore dell'area di lavoro.
- **Visualizzazione**: il banner riporta il messaggio d'errore specifico fornito dal backend.
- **Chiusura**: l'utente può rimuovere l'avviso cliccando sull'icona `close`. Questa azione pulisce lo stato d'errore nel servizio di riferimento e ripristina la visualizzazione standard.

## Anomalie nella visualizzazione dei grafici
Il componente di **visualizzazione** dei grafici monitora costantemente la qualità della connessione dati per garantire l'affidabilità delle letture biometriche.

### Stati della connessione live
Nella parte superiore dei grafici in tempo reale viene visualizzato lo stato della connessione **#gloss("websocket")**{{gloss}}:
- **Connected**: la ricezione dati è ottimale.
- **Reconnecting...**: il sistema ha rilevato una perdita temporanea di segnale e sta tentando il ripristino automatico. In questa fase, il grafico potrebbe mostrare un avviso.
- **Disconnected**: la connessione è interrotta. Verificare lo stato del gateway o la connettività di rete.

### Pulsanti disabilitati
Se nella tabella sensori l'icona per il grafico real-time (`ssid_chart`) risulta grigia e non cliccabile, le cause possono essere:
1. **Gateway inattivo**: il gateway che ospita il sensore è in stato `INACTIVE`.
2. **Sensore sospeso**: il sensore stesso è stato interrotto tramite comando manuale.

## Problemi di accesso e ricezione email
I flussi di autenticazione dipendono dalla corretta ricezione delle notifiche di sistema.
- **Mancata ricezione invito/reset**: in ambiente di test, assicurarsi di monitorare il server **#gloss("Mailtrap")**{{gloss}} per intercettare le email in uscita.
- **Tenant non trovato**: se durante il login appare un errore relativo al tenant, verificare che il nome dell'organizzazione selezionata sia corretto e che il proprio utente sia stato effettivamente associato a quel tenant dal Super Admin.

## Validazione dei dati nei moduli
In caso di problemi durante l'inserimento dati (es. creazione utente o cambio password), il sistema evidenzia i campi non validi.
- **Password troppo breve**: viene segnalato se la password non raggiunge gli 8 caratteri minimi richiesti.
- **Mismatch password**: un avviso specifico appare se i campi "Nuova Password" e "Conferma Password" non coincidono.
- **Intervallo gateway**: il sistema blocca il salvataggio se l'intervallo dati impostato è inferiore a **100ms**.

Ogni segnalazione è pensata per guidare l'utente verso la risoluzione autonoma del problema prima di richiedere assistenza tecnica.