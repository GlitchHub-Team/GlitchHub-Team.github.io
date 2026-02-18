#let issue(number, repo: "docs") = {
  repo = lower(repo)
  let base-url = "https://github.com/GlitchHub-Team"

  let repo-name
  let repo-desc
  if (repo == "docs") {
    repo-name = "GlitchHub-Team.github.io"
    repo-desc = "Docs"
  } else if (repo == "poc") {
    repo-name = "PoC"
    repo-desc = "PoC"
  } else {
    panic("La repo può essere solo \"docs\" o \"poc\"")
  }


  link(
    base-url + "/" + repo-name + "/issues/" + str(number),
  )[*#repo-desc/\##number*]
}

#let issue_full(number, repo: "docs") = {
  repo = lower(repo)
  let base-url = "https://github.com/GlitchHub-Team"

  let repo-name
  let repo-desc
  if (repo == "docs") {
    repo-name = "GlitchHub-Team.github.io"
    repo-desc = "Doc."
  } else if (repo == "poc") {
    repo-name = "PoC"
    repo-desc = "Doc."
  } else {
    panic("La repo può essere solo \"docs\" o \"poc\"")
  }


  link(
    base-url + "/" + repo-name + "/issues/" + str(number),
  )[*Issue #repo-desc \##number*]
}

#let repo(tipo, content) = {
  let base-url = "https://github.com/GlitchHub-Team"
  if tipo == "docs" {
    link(base-url + "/GlitchHub-Team.github.io")[#content]
  } else if tipo == "poc" {
    link(base-url + "/PoC")[#content]
  } else if tipo == "actions" {
    link(base-url + "/actions")[#content]
  } else {
    panic("Impossibile determinare repo")
  }
}
