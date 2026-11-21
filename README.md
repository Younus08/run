A simple Bash script to compile and run `.sh`, `.py`, and `.c` files using a single `run` command from anywhere.

# files supported
* `bash`
* `python3` (for Python files)
* `gcc` (for C files)

#Setup

1. Make the scripts executable:
   ```bash
   chmod +x run.sh alias.sh
   ```

2. Add the global `run` alias to your shell (`.bashrc` / `.zshrc`):
   ```bash
   ./alias.sh
   source ~/.bashrc   # or source ~/.zshrc
   ```

#Usage

```bash
run <filename>
```

Examples
```bash
run script.sh
run app.py
run main.c
```
