#!/usr/bin/env bash

packs=(
    "color"
    "language"
    "completion"
    "syntax"
    "command"
    "formatter"
    "integration"
)

for a in "${packs[@]}"; do
    echo "$a"
done
