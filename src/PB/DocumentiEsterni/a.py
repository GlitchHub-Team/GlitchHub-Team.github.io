import locale
locale.setlocale(locale.LC_NUMERIC, "German")

while True:
    values = input("> ").split("\t")

    new_values = []

    for string in values:
        value = float(string.replace(",", "."))
        final_value = locale.format_string('%.2f', value, True)
        new_values.append(final_value)

    print("\n".join(new_values))