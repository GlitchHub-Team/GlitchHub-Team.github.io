import subprocess
import os
import pandas as pd
import re
from pypdf import PdfReader
import language_tool_python
from spellchecker import SpellChecker

ROOT_DIR = "../"
SRC_DIR = "../src/RTB"
OUTPUT_EXCEL_REPORT = "errori&gulp.xlsx"

WHITELIST = {
    # Nomi propri
    "glitchhub", "alessandro", "dinato", "elia", "ernesto", "stellin",
    "jaume", "bernardi", "michele", "dioli", "riccardo", "graziani",
    "siria", "salvalaio", "hossam", "ver", "of", "ezzemouri",
    "m31", "srl", "luca", "cossaro", "moones", "mobaraki", "cristian", "pirlog",
    "vardanega", "tullio", "cardin", "unipd", "math",
    
    # Termini tecnici documentazione
    "consuntivo", "preventivo", "redazione", "rendicontazione", "norme", 
    "qualifica", "capitolato", "proponente", "committente", "verbali", 
    "bozza", "stabile", "incrementale", "monolitico", "manutenibilità", 
    "usabilità", "affidabilità", "scalabilità", "cifratura", "completezza", 
    "ortografica", "avanzamento", "cruscotto", "pedice",
    
    # Acronimi e metriche
    "mpc", "pv", "ac", "ev", "bac", "eac", "etc", "cv", "sv", "tcr", "ts", 
    "rsi", "prct", "ig", "gulpease", "co", "cd", "cc", "tsr", "dd", "crg", 
    "qms", "cq", "te", "wd", "spf", "mpd", "cro", "crp", "ad", "dl", "ft", 
    "ff", "mtbf", "mttr", "lt", "mum", "rt", "ur", "an", "mo", "de", "afr",
    
    # Ruoli utente
    "superadmin", "tenantadmin", "tenantuser",
    
    # Tool e tecnologie
    "typst", "latex", "github", "clickup", "discord", "microsoft", "teams", 
    "tinymist", "cetz", "semver", "nosql", "api", "apis",
    
    # Ruoli abbreviati (BASE per pedici G, G1, G2, etc.)
    "resp", "amm", "verif", "verf", "analist", "progett", "programm",
    "respg", "ammg", "verifg", "verfg", "analistg", "progettg", "programmg",
    
    # Admin e varianti
    "admin", "tenant", "enant",
    
    # Termini tecnici aggiuntivi
    "postcondizioni", "precondizioni", "timestamp", "datetime",
    "timeseries", "tenat", "oximeter", "outofrange", "realtime", 
    "obb", "des", "stat", "multitenant", "multitenancy",
    
    # Grafici
    "torta", "barre", "linea", "istogramma",
    
    # Altre parole comuni nei documenti
    "frontend", "backend", "database", "endpoint", "workflow",
    "sprint", "backlog", "stakeholder", "milestone", "deploy",
    "repository", "commit", "branch", "merge", "pull", "push",
    "refactoring", "debugging", "testing", "mock", "stub",
}

PEDICE_PATTERN = re.compile(r'^(.+?)(G\d*|g\d*)$')

IGNORA_PATTERN = [
    "a torta", "a barre", "a linea", "T otale", "t otale",
    "della API", "a dati", "ai Super", "del API", "dal API", 
    "Client e", "delle API", "alle API", "con API"
]

try:
    tool_it = language_tool_python.LanguageTool('it')
    spell_en = SpellChecker(language='en')
except Exception:
    exit(1)


def ripara_testo_pdf(testo):
    if not testo:
        return ""

    testo = testo.replace('\x00', '')
    testo = re.sub(r'(\w)-\n(\w)', r'\1\2', testo)
    testo = re.sub(r'(\w)\s*-\s+([a-z])', r'\1\2', testo)
    testo = re.sub(r'(\w)\u00ad\s*(\w)', r'\1\2', testo)

    trattini = '[\u2010\u2011\u2012\u2013\u2014\u2015\u2212]'
    testo = re.sub(rf'(\w){trattini}\s*\n?\s*([a-z])', r'\1\2', testo)
    testo = re.sub(r'(\w)\s*\n\s*([a-z])', r'\1\2', testo)
    testo = testo.replace('\u00ad', '')
    
    correzioni = {
        "T otale": "Totale",
        "t otale": "totale",
        "C liente": "Cliente",
        "c liente": "cliente",
        "S erver": "Server",
        "s erver": "server",
    }
    for errato, corretto in correzioni.items():
        testo = testo.replace(errato, corretto) 
  
    testo = re.sub(r'[ \t]+', ' ', testo)
    testo = re.sub(r'\n\s*\n', '\n\n', testo)
    
    return testo.strip()


def parola_in_whitelist(parola):
    parola_lower = parola.lower().strip()

    if parola_lower in WHITELIST:
        return True

    parola_clean = re.sub(r'[^\w]', '', parola_lower)
    if parola_clean in WHITELIST:
        return True

    match = PEDICE_PATTERN.match(parola_clean)
    if match:
        base = match.group(1).lower()
        if base in WHITELIST:
            return True
    
    match_num = re.match(r'^(.+?)(\d+)$', parola_clean)
    if match_num:
        base = match_num.group(1)
        if base in WHITELIST:
            return True
    
    if parola_clean.endswith('g') and len(parola_clean) > 1:
        base = parola_clean[:-1]
        if base in WHITELIST:
            return True
    
    return False


def e_parola_tecnica(parola):
    if re.match(r'^[a-z]+[A-Z]', parola):
        return True

    if '_' in parola:
        return True

    if re.match(r'^[a-zA-Z]+\d+[a-zA-Z]*$', parola):
        return True

    if parola.isupper() and len(parola) >= 2:
        return True

    if '/' in parola or '.' in parola and len(parola) > 5:
        return True
    
    return False


def conta_frasi_semplice(testo):
    abbreviazioni = [
        r'Sig\.', r'Dott\.', r'Prof\.', r'Dr\.', r'art\.', r'pag\.',
        r'ecc\.', r'sig\.ra', r'sig\.na', r'Vs\.', r'N\.', r'n\.',
        r'cap\.', r'tel\.', r'fig\.', r'tab\.', r'vol\.', r'pp\.',
        r'ed\.', r'cfr\.', r'ca\.', r'es\.', r'etc\.', r'vs\.',
    ]
    
    testo_temp = testo
    for i, abbr in enumerate(abbreviazioni):
        testo_temp = re.sub(abbr, f'ABBR{i}ABBR', testo_temp, flags=re.IGNORECASE)
    
    frasi = re.split(r'[.!?]+(?:\s+|$)', testo_temp)
    frasi = [f.strip() for f in frasi if f.strip()]
    
    if len(frasi) == 0 and testo.strip():
        return 1
    
    return len(frasi)


def conta_parole(testo):
    testo_pulito = re.sub(r'[^\w\s\']', ' ', testo)
    parole = testo_pulito.split()
    parole = [p for p in parole if p.strip() and not p.isdigit()]
    return len(parole)


def calcola_gulp_ease_semplice(testo):
    if not testo.strip():
        return 0, 0, 0, 0

    try:
        num_frasi = conta_frasi_semplice(testo)
        num_parole = conta_parole(testo)
        num_lettere = len([c for c in testo if c.isalpha()])

        if num_parole == 0 or num_frasi == 0:
            return 0, num_frasi, num_parole, num_lettere

        gulp_ease = 89 + ((300 * num_frasi) - (10 * num_lettere)) / num_parole
        
        return round(gulp_ease, 2), num_frasi, num_parole, num_lettere
        
    except Exception:
        return 0, 0, 0, 0


def controlla_errori_smart(testo, tool_it, spell_en):
    errori_log = []
    
    try:
        matches = tool_it.check(testo)
        
        for match in matches:
            regole_ignorate = {
                "WHITESPACE_RULE", 
                "UPPERCASE_SENTENCE_START", 
                "Double_Punctuation",
                "COMMA_PARENTHESIS_WHITESPACE",
                "UNPAIRED_BRACKETS",
                "MORFOLOGIK_RULE_IT_IT", 
            }
            
            if match.rule_id in regole_ignorate:
                continue

            parola = testo[match.offset : match.offset + match.error_length]

            if not re.search(r'[a-zA-Z]', parola):
                continue
            
            ctx_around = testo[max(0, match.offset - 10):match.offset + match.error_length + 10]
            if any(pattern.lower() in ctx_around.lower() for pattern in IGNORA_PATTERN):
                continue
            
            parola_clean = re.sub(r'[^\w]', '', parola)
            
            if parola_in_whitelist(parola_clean):
                continue

            if e_parola_tecnica(parola_clean):
                continue

            if len(parola_clean) > 2:
                if parola_clean.lower() in spell_en:
                    continue
                base = re.sub(r'\d+$', '', parola_clean.lower())
                if base and base in spell_en:
                    continue

            sugg = match.replacements[0] if match.replacements else "N/A"

            ctx_start = max(0, match.offset - 25)
            ctx_end = min(len(testo), match.offset + match.error_length + 25)
            ctx = testo[ctx_start:ctx_end].replace("\n", " ").strip()
            
            errori_log.append({
                "Parola": parola,
                "Suggerimento": sugg,
                "Contesto": f"...{ctx}...",
                "Tipo": match.rule_id
            })
    
    except Exception:
        pass
    
    return errori_log


def formatta_errori(errori_list):
    if not errori_list:
        return "Nessun errore"
    
    result = []
    for err in errori_list:
        result.append(f"• '{err['Parola']}' → {err['Suggerimento']} | CTX: {err['Contesto']}")
    
    return "\n".join(result)


def esegui_analisi_completa():
    if not os.path.exists(SRC_DIR):
        return
    
    files_to_process = []
    for root, dirs, files in os.walk(SRC_DIR):
        for file in files:
            if file.endswith(".typ") and not file.startswith("_") and not file[0].isdigit():
                if "bd" not in file.lower() and "diario" not in file.lower():
                    files_to_process.append(os.path.join(root, file))
    
    if not files_to_process:
        return

    report_data = []
    errori_compilazione = []
    
    for idx, fpath in enumerate(files_to_process, 1):
        nome_file = os.path.basename(fpath)
        pdf_temp = f"temp_{nome_file.replace('.typ', '')}.pdf"
        
        try:
            result = subprocess.run(
                ["typst", "compile", "--root", ROOT_DIR, fpath, pdf_temp],
                check=True,
                capture_output=True,
                text=True
            )
            
            if not os.path.exists(pdf_temp):
                errori_compilazione.append(nome_file)
                continue
            
            reader = PdfReader(pdf_temp)
            full_text = ""
            for page in reader.pages:
                page_text = page.extract_text()
                if page_text:
                    full_text += page_text + " "
            
            if not full_text.strip():
                continue

            txt = ripara_testo_pdf(full_text)
            gulp, frasi, parole, lettere = calcola_gulp_ease_semplice(txt)
            errori = controlla_errori_smart(txt, tool_it, spell_en)

            with open("file.txt", "w", encoding="utf-8") as f:
                f.write(f"=== {nome_file} ===\n")
                for errore in errori:
                    f.write(f"{errore}\n")
            
            report_data.append({
                "Nome File": nome_file,
                "Indice Gulpease": gulp,
                "Numero Errori": len(errori),
            })
            
        except FileNotFoundError:
            errori_compilazione.append(nome_file)
            break
            
        except subprocess.CalledProcessError:
            errori_compilazione.append(nome_file)
            
        except Exception:
            errori_compilazione.append(nome_file)
            
        finally:
            if os.path.exists(pdf_temp):
                try:
                    os.remove(pdf_temp)
                except:
                    pass
    
    tool_it.close()
    
    if report_data:
        df = pd.DataFrame(report_data)
        
        try:
            df.to_excel(OUTPUT_EXCEL_REPORT, index=False, sheet_name="Report Completo")
        except (PermissionError, Exception):
            pass


if __name__ == "__main__":
    esegui_analisi_completa()
    #esegui_analisi_completa_2()