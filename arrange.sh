#!/bin/bash

for file in files/*.txt; do

    filename=$(basename "$file")

    if [[ -f "$file" ]]; then

        first=$(echo "$filename" | cut -c1 | tr '[:upper:]' '[:lower:]')

        if [[ "$first" =~ ^[a-z]$ ]]; then
            mv "$file" "$first/"
        fi
    fi
done
