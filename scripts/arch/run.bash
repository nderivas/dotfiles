#!/usr/bin/env bash

# Title: Setup scripts runner
# Author: Nicolás de Rivas Morillo

runsDir="$(pwd)/runs"
dry="0"

[[ "$1" == "--dry" ]] && dry="1"

scripts=$(find ${runsDir} -maxdepth 1 -mindepth 1 -type f)

for script in $scripts; do
    echo -e "\e[34m[RUNNING]\e[0m $script"
    [[ $dry == "0" ]] && $script
done
