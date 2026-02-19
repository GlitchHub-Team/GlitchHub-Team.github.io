"""
Script svg_normalizer

Per ulteriori informazioni, eseguire

    python svg_normalizer.py -h

"""
import argparse as ap
import re
from pathlib import Path

def new_number(old_number: int, removals: list[int]):
    old_number = int(old_number)
    delta = len(list(filter(lambda number: number < old_number, removals)))
    new_number = old_number - delta
    return new_number

def read_svg(fp: Path):
    with open(fp, "r", encoding="utf-8") as f:
        content = f.read()
    return content

def write_svg(dir: Path, fp: str, content: str):
    new_path: Path = dir.joinpath(f"new/{fp}")
    if not new_path.parent.exists():
        new_path.parent.mkdir(parents=True)

    with open(new_path, "w", encoding="utf-8") as f:
        f.write(content)

def sub_uc_number(content: str, removals: list[int]):
    def replace(match) -> str:
        if match:
            uc_number = match.groups()[0]
            new_uc_num = new_number(uc_number, removals)
            return f"UC{new_uc_num}"
        
        return "????"
        
    return (
        re.sub(
            r"UC(\d+)",
            replace, #pyright: ignore
            content
        )       #pyright: ignore
    )

def normalize_svg(input_file: Path, dir: Path, removals=[]) -> tuple[str, int, int|None]:
    old_uc_number = int(input_file.stem.replace("UC", ""))

    if old_uc_number not in removals:
        new_svg = sub_uc_number(read_svg(input_file), removals)
        new_uc_number = new_number(old_uc_number, removals)

        write_svg(dir, f"UC{new_uc_number}.svg", new_svg)
        return ("changed", old_uc_number, new_uc_number)

    return ("deleted", old_uc_number, None)

def main(*, adr, dir, removals):
    
    files_read = 0
    files_changed = 0
    files_deleted = 0
    change_dict = {}

    for input_file in dir.iterdir():
        if (not input_file.is_file()) or (input_file.suffix.lower() != ".svg"):
            continue
        
        files_read += 1
        result, old_number, new_number = normalize_svg(input_file, dir, removals)
        if result == "changed":
            files_changed += 1
            print(f"[Normalizzato] {input_file.relative_to(dir)}")
            if old_number != new_number:
                print(f"  UC{old_number} -> UC{new_number}")
            change_dict[old_number] = new_number
        
        elif result == "deleted":
            files_deleted += 1
            print(f"[Eliminato] {input_file.relative_to(dir)}")

    if files_changed + files_deleted > 0:
        print(f"Letti {files_read} file\nModificati {files_changed} file\nEliminati {files_deleted} file")
    else:
        print(f"Non sono stati trovati file SVG in questa cartella. Assicurati di aver passato il parametro --dir corretto."
               " Ad esempio --dir \"src/assets/diagrammi\" se sei nel primo livello di repo.")

    # Modifica AdR

    if adr:
        print("--- Modifica AdR ---")


        with open(adr, "r", encoding="utf-8") as f:
            adr_content = f.read()

        adr_content = sub_uc_number(adr_content, removals)
            # print(f"UC{old_uc_num}", f"UC{new_uc_num}")
            # adr_content = adr_content.replace(f"UC{old_uc_num}", f"UC{new_uc_num}")

        with open(adr, "w", encoding="utf-8") as f:
            f.write(adr_content)

        print("AdR modificato con successo")


if __name__ == "__main__":

    parser = ap.ArgumentParser(
        prog="svg_normalizer",
        description="Normalizza SVG di UC in caso ci siano rimozioni."
                    " Si noti che è in grado solamente di rimuovere UC di primo livello"
    )

    parser.add_argument(
        "adr",
        nargs="?",
        help="Path del file typ di AdR",
        type=Path
    )

    parser.add_argument(
        "--dir",
        help="Directory dove eseguire lo script",
        default=Path.cwd(),
        type=Path
    )

    parser.add_argument(
        "-r", "--removals",
        nargs="*",
        type=int,
        help="Numeri degli UC che sono stati rimossi. Inserire solo i numeri, ad esempio 2, 3, etc.",
    )

    args = parser.parse_args()

    print(f"Verranno rimossi i seguenti UC: {args.removals}")
    print(f"I nuovi file verranno inseriti nella cartella {(args.dir/"new").as_posix()}, sovrascrivendone eventuali contenuti.")
    
    if args.adr:
        print(f"Verrà modificato il file di AdR al path: {args.adr}")
    prosegui = input("Sei sicuro di voler procedere? [Y/n] ").lower()

    if prosegui in ("", "y"):
        main(
            adr=args.adr,
            dir=args.dir,
            removals=args.removals
        )
    else:
        print("Operazione interrotta")
