
/*
  Ritorna la descrizione di una repository secondo una stringa di partenza.

  = Parametri
  == repo
  Stringa che rappresenta una repository, può essere una tra le seguenti:
  - "docs": repo documentazione
  - "poc": repo PoC
  - "obs" o "observability": repo Observability
  - "gw" o "gateway": repo Gateway
  - "dc", "dataconsumer" o "data consumer": repo DataConsumer
  - "dash" o "dashboard": repo Dashboard
  - "nats": repo NATS Server
  - "action" o "actions": repo GitHub Actions

  = Valore di ritorno
  Tupla (repo-desc, repo-name, repo-long)
  == repo-desc
  Descrizione breve della repository

  == repo-name
  Nome della repository (come appare su GitHub)

  == repo-long
  Descrizione lunga della repository
*/
#let repo-description-from-str(repo) = {
  repo = lower(repo)
  let repo-name
  let repo-desc
  let repo-long

  if (repo == "docs") {
    repo-name = "GlitchHub-Team.github.io"
    repo-desc = "Docs"
    repo-long = "documentazione"
  }
  else if (repo == "poc") {
    repo-name = "PoC"
    repo-desc = "PoC"
    repo-long = "PoC"
  }
  else if (repo == "obs" or repo == "observability") {
    repo-name = "Observability"
    repo-desc = "Observability"
    repo-long = "observability"
  }
  else if (repo == "gw" or repo == "gateway") {
    repo-name = "Gateway"
    repo-desc = "Gateway"
    repo-long = "gateway"
  }
  else if (repo == "dc" or repo == "dataconsumer" or repo == "data consumer") {
    repo-name = "DataConsumer-TimescaleDB"
    repo-desc = "DataConsumer"
    repo-long = "data consumer"
  }
  else if (repo == "dash" or repo == "dashboard") {
    repo-name = "Dashboard"
    repo-desc = "dashboard"
    repo-long = "dashboard"
  }
  else if (repo == "nats") {
    repo-name = "NATS-Jetstream-Server"
    repo-desc = "NATS"
    repo-long = "sistema NATS"
  }
  else if (repo == "action" or repo == "actions") {
    repo-name = "actions"
    repo-desc = "actions"
    repo-long = "actions"
  }
  else if (repo == "mvp") {
    repo-name = "MVP"
    repo-desc = "mvp"
    repo-long = "mvp"
  }
  else {
    panic("Valore stringa repo invalido!")
  }

  return (repo-desc, repo-name, repo-long)
}

/*
  Ritorna lo URL di una repository specifica
  = Parametri
  == url-type
  Una stringa tra:
  - "base": url di repository base
  - "issue": url di pagina di lista issues o issue singola
  - "pr": url di pagina di pull request *singola*
  - "prs": url di pagina di *lista* pull request

  == repo-string
  Stringa che rappresenta una repository, può essere una tra le seguenti:
  - "docs": repo documentazione
  - "poc": repo PoC
  - "obs" o "observability": repo Observability
  - "gw" o "gateway": repo Gateway
  - "dc", "dataconsumer" o "data consumer": repo DataConsumer
  - "dash" o "dashboard": repo Dashboard
  - "nats": repo NATS Server
  - "action" o "actions": repo GitHub Actions
*/
#let get-url(url-type, repo-string) = {

  let (repo-desc, repo-name, repo-long) = repo-description-from-str(repo-string)
  let base-url = "https://github.com/GlitchHub-Team"

  if url-type == "base" {
    (base-url, repo-name).join("/")
  }
  else if url-type == "issue" {
    (base-url, repo-name, "issues").join("/")
  }
  else if url-type == "pr" {
    (base-url, repo-name, "pull").join("/")
  }
  else if url-type == "prs" {
    (base-url, repo-name, "pulls").join("/")
  }
  else {
    panic("url-type sconosciuto: " + str(url-type))
  }
}

/*
  Ritorna link cliccabile a una issue specifica

  = Parametri
  == number
  Numero della issue

  == repo
  Stringa che rappresenta una repository, può essere una tra le seguenti:
  - "docs": repo documentazione
  - "poc": repo PoC
  - "obs" o "observability": repo Observability
  - "gw" o "gateway": repo Gateway
  - "dc", "dataconsumer" o "data consumer": repo DataConsumer
  - "dash" o "dashboard": repo Dashboard
  - "nats": repo NATS Server
  - "action" o "actions": repo GitHub Actions

  = Valore di ritorno
  Oggetto `#link()`
*/
#let issue(number, repo: "docs") = {
  let (repo-desc, _, _) = repo-description-from-str(repo)
  let issue-url = get-url("issue", repo) + "/" + str(number)

  link(issue-url)[*#repo-desc/\##number*]
}

#let issue_full(number, repo: "docs") = {
  let (_, _, repo-long) = repo-description-from-str(repo)
  let issue-url = get-url("issue", repo) + "/" + str(number)

  link(issue-url)[*Issue \##number (repo #repo-long)*]
}

/*
  Ritorna link cliccabile a una PR specifica

  = Parametri
  == number
  Numero della PR

  == repo
  Stringa che rappresenta una repository, può essere una tra le seguenti:
  - "docs": repo documentazione
  - "poc": repo PoC
  - "obs" o "observability": repo Observability
  - "gw" o "gateway": repo Gateway
  - "dc", "dataconsumer" o "data consumer": repo DataConsumer
  - "dash" o "dashboard": repo Dashboard
  - "nats": repo NATS Server
  - "action" o "actions": repo GitHub Actions

  = Valore di ritorno
  Oggetto `#link()`
*/
#let pr(number, repo: "docs") = {
  let (repo-desc, _, _) = repo-description-from-str(repo)
  let pr-url = get-url("pr", repo) + "/" + str(number)

  link(pr-url)[*#repo-desc/\##number*]
}

/*
  Ritorna link cliccabile a una repository specifica

  = Parametri
  == quale
  Stringa che rappresenta una repository, può essere una tra le seguenti:
  - "docs": repo documentazione
  - "poc": repo PoC
  - "obs" o "observability": repo Observability
  - "gw" o "gateway": repo Gateway
  - "dc", "dataconsumer" o "data consumer": repo DataConsumer
  - "dash" o "dashboard": repo Dashboard
  - "nats": repo NATS Server
  - "action" o "actions": repo GitHub Actions

  == body
  Corpo del link, da sostituire all'indirizzo plain della repo

  = Valore di ritorno
  Oggetto `#link()`
*/
#let repo(quale, body) = {
  let repo-url = get-url("base", quale)
  link(repo-url, body)
}
