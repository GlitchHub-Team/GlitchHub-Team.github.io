"""

"""
import locale
import pyperclip as ppc

locale.setlocale(locale.LC_NUMERIC, "German")

def split_tab_line(tabbed_string):
    values = tabbed_string.split("\t")
    new_values = []

    for string in values:
        value = float(string.replace(",", "."))
        final_value = locale.format_string('%.2f', value, True)
        new_values.append(final_value)
    
    return new_values

def build_typst_table(matrix):
    row_len = len(matrix[0])

    string = ""

    for i in range(row_len):
        string += f"[Sprint {i+1}], ".ljust(14)

        for row in matrix:
            string += f"[{row[i]}], ".ljust(13)

        string += "\n"

    return string

global rows
matrix = []

while True:

    command = input("$ ").lower().split(" ")

    if command[0] == "r":
        matrix = []
        if len(command) <= 1: 
            print("usage: r <row_num>")
            continue

        num_rows = int(command[1])

        for i in range(num_rows):
            while True:
                try:
                    row = split_tab_line(input(f"row {i+1}/{num_rows} > "))
                    if len(matrix) > 0 and len(row) != len(matrix[0]):
                        print("Wrong row len!")
                        continue
                    matrix.append(row)
                    break
                except ValueError:
                    print("inserire solo tabelle con numeri")

    elif command[0] == "p":
        if matrix == []:
            print("nulla da mostrare, crea tabella con r")
            continue
        
        table = build_typst_table(matrix)

        print(table)
        ppc.copy(table)
        print("Copied to clipboard")

    elif command[0] == "q":
        exit(0)
    
    else:
        print(f"r <num_rows>: seleziona num_rows righe\n"
              "p: stampa tabella typst e copia alla clipboard\n"
              "q: esci\n"
              "qualunque altra cosa mostra questo messaggio\n")
