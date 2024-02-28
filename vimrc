set nocompatible "event though it's already set in archlinux.vim
set encoding=utf-8

syntax enable
filetype plugin indent on

set number
set nowrap
set mouse-=a
set cursorline
set backspace=indent,eol,start

set termguicolors
set background=dark
colorscheme jellybeans

set showcmd
set showmode
set showmatch

set wildmenu
" set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set shiftround
set autoindent
set smartindent
set smarttab

set hlsearch
set ignorecase
set incsearch
set smartcase

set splitright
set splitbelow

set nobackup
set nowb
set noswapfile
set viminfo="999,n~/.vim/viminfo

set pastetoggle=<F3>
cabbrev vsb vert sb
cabbrev som source $MYVIMRC

no <Leader><Esc> :noh<CR>
no <Leader>n :bn<CR>
no <Leader>b :bp<CR>
no <Leader>l :ls<CR>

" augroup PrettierMappings
"   autocmd FileType html,css,json,sass,scss,php,javascriptreact,typescriptreact,vue no <buffer> <Leader>p :Prettier<CR>
" augroup END

let vim_prettier=$HOME . "/.vim/pack/formatter/opt/vim-prettier/autoload/prettier.vim"
if filereadable(expand(vim_prettier))
	augroup vim_prettier_group
		au!
		autocmd FileType html,css,json,sass,scss,php,javascriptreact,typescriptreact,vue :packadd vim-prettier
	augroup END
endif

" Raimondi/delimitMate
let delimitMate_path=$HOME . "/.vim/pack/completion/start/delimitMate/autoload/delimitMate.vim"
if filereadable(expand(delimitMate_path))
	let g:delimitMate_expand_cr=1
	let g:delimitMate_expand_space=1
endif

" rhysd/vim-clang-format
let vim_clang_format="~/.vim/pack/completion/start/vim-clang-format/autoload/clang_format.vim"
if filereadable(expand(vim_clang_format))
	let g:clang_format#style_options={
				\ "ColumnLimit" : 0,
				\ "ReflowComments" : "false"
				\ }
endif

" Yggdroot/indentLine
let g:indentLine_enabled=0
