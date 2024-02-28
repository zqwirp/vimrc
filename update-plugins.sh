#!/usr/bin/env bash

pack_dir="$HOME/.vim/pack"

find "$pack_dir" \
-type d \
-name .git \
-exec sh -c 'i="$1"; echo $i; cd $i && cd .. && git pull --rebase --depth 1' shell  {} \;

