for i in range(0, 16):
    for j in range(0, 16):
        code = str(i * 16 + j)
        ansi_code = f"\033[48;5;{code}m"
        reset_code = "\033[0m"
        colored_text = f"{ansi_code} {code.ljust(4)} {reset_code}"
        print(colored_text, end="")
    print()