#!/usr/bin/env bash

# Title: Setup scripts runner
# Author: Nicolás de Rivas Morillo

runs-dir="$(pwd)/runs"
filter=""
dry="0"

[[ $1 == "--dry" ]] && dry="1" || filter="$1"

scripts=$(find ${runs-dir} -maxdepth 1 -mindepth 1 -type f)

echo "$scripts --- ${runs-dir}"

for script in scripts; do
  echo "$script"
done
