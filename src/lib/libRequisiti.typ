#let LISTA-RD = json("../tracciamento/RD.json").enumerate()
#let LISTA-RF = json("../tracciamento/RF.json").enumerate()
#let LISTA-RNF = json("../tracciamento/RNF.json").enumerate()

#for (i, rd) in LISTA-RD {
  LISTA-RD.at(i) = (..rd, codice: [*RD-#(i+1)-#rd.urgenza*])
}

#for (i, rf) in LISTA-RF {
  LISTA-RF.at(i) = (..rf, codice: [*RF-#(i+1)-#rf.urgenza*])
}

#for (i, rnf) in LISTA-RNF {
  LISTA-RNF.at(i) = (..rnf, codice: [*RNF-#(i+1)-#rnf.urgenza*])
}

#let get-req-by-id = (lista, id) => {
  lista.find(item => item.id == id)
}
