#!/usr/bin/env bash
pack_dir="$HOME/.vim/pack"

echo "$pack_dir"

declare -A vim_plugins

vim_plugins["nanotech/jellybeans.vim"]="color/start"

vim_plugins["pangloss/vim-javascript"]="language/opt"
vim_plugins["fatih/vim-go"]="language/opt"

vim_plugins["Raimondi/delimitMate"]="completion/start"

vim_plugins["MaxMEllon/vim-jsx-pretty"]="syntax/opt"

vim_plugins["tpope/vim-surround"]="command/start"
vim_plugins["tpope/vim-commentary"]="command/start"

vim_plugins["mattn/emmet-vim"]="snippet/opt"
vim_plugins["SirVer/ultisnips"]="snippet/start"
vim_plugins["honza/vim-snippets"]="snippet/start"

vim_plugins["rhysd/vim-clang-format"]="formatter/opt"
vim_plugins["prettier/vim-prettier"]="formatter/opt"

vim_plugins["tpope/vim-fugitive"]="integration/start"
vim_plugins["airblade/vim-gitgutter"]="integration/start"

for key in "${!vim_plugins[@]}"; do
    git clone --depth 1 "https://github.com/$key" "$HOME/.vim/pack/${vim_plugins[$key]}/${key#*/}"
    # echo "git clone --depth 1 https://github.com/$key $HOME/.vim/pack/${vim_plugins[$key]}/${key#*/}"
done

#"${the_string#*/}":
#This line uses parameter expansion to remove the substring before the first / in the value of the_string.
#The syntax ${variable#pattern} removes the shortest match of pattern from the beginning of the variable's value. In this case, it removes everything up to and including the first /.
#After this line, substring_after_slash will contain the part of the string after the first /.