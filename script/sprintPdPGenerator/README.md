# Configurazione Sprint PdP Generator
1. **Navigare fino alla directory dello script**: `cd src/RTB/DocumentiEsterni/sprintPdPGenerator/cmd/automationPdPSprint`
2. **Set GitHub Token**(opzionale se già fatto): creare **.env** file e scrivere `PDP_GITHUB_TOKEN = <token presente su BitWarden>`
3. **Eseguire lo script**: `go run . -sprint X`, dove X è il numero dello sprint

# Configurazione Sprint consuntivo di periodo attuale
1. **Navigare fino alla directory dello script**: `cd src/RTB/DocumentiEsterni/sprintPdPGenerator/cmd/consuntivoPeriodoAttuale`
2. **Set GitHub Token**(opzionale se già fatto): creare **.env** file e scrivere `PDP_GITHUB_TOKEN = <token presente su BitWarden>`
3. **Eseguire lo script**: `go run . -sprint X`, dove X rappresenta lo sprint e i successivi in cui non verranno considerate le issue (es. se si vuole considerare solo gli sprint 1-2-3, mettere 4)