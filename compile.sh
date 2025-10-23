#!/usr/bin/env bash
set -e

SRC_DIR="src"
OUT_DIR="website/pdf"
typ_files=()
while IFS= read -r -d '' file; do
    typ_files+=("$file")
done < <(find "$SRC_DIR" -type f -name "*.typ" -print0 | sort -z)

for typ_file in "${typ_files[@]}"; do
    rel_path="${typ_file#$SRC_DIR/}"
    pdf_file="$OUT_DIR/${rel_path%.typ}.pdf"

    filename="$(basename "$rel_path")"
    if [[ "$filename" == "template.typ" ]] || [[ "$filename" == "lib.typ" ]]; then
        echo "Skipping $rel_path"
        continue
    fi

    if [ ! -f "$pdf_file" ] || [ "$typ_file" -nt "$pdf_file" ]; then
        mkdir -p "$(dirname "$pdf_file")"
        echo "Compiling: $typ_file -> $pdf_file"
        typst compile --root "$SRC_DIR" "$typ_file" "$pdf_file"
    else
        echo "Skipping: $typ_file (up to date)"
    fi
done