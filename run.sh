#!/bin/bash

if [[ -z "$1" ]]; then
    echo "Give the file to run"
    exit 1
fi

code_file="$1"

if [[ ! -f "$code_file" ]]; then
    echo "Error: File does not exist in this folder"
    exit 1
fi

case "$code_file" in

    *.sh)
        echo "~~ Running Bash File ~~"
        bash "$code_file"
        ;;

    *.py)
        echo "~~ Running Python File ~~"
        python3 "$code_file"
        ;;

    *.c)
        compiled="${code_file%.c}"
        if gcc "$code_file" -o "$compiled"; then
            echo " C  File compiled successfully"
            echo "~~Runnig C File ~~"
            "./$compiled"
        else
            echo "C Compilation failed"
            exit 1
        fi
        ;;

    *)
        echo "Unsupported file type"
        exit 1
        ;;
esac