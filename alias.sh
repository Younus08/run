#!/bin/bash

path=$(find ~ -name " run.sh" | sed -n "1p")

echo -e "alias run='$path'" >> ~/.zshrc
echo -e "alias run='$path'" >> ~/.bashrc