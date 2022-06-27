" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
let skip_defaults_vim=1

" Important default settings
set nocompatible
syntax enable
filetype plugin on
filetype plugin indent on
colorscheme jellybeans
set background=dark
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"


" Important ettings
set encoding=utf-8
set number
set wildmenu
set showmatch
set nowrap
set showcmd
set backspace=indent,eol,start
set pastetoggle=<F3>
" set autochdir
" set linebreak
set cursorline
set mouse-=a
" set showtabline=0

" Indent settings
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set shiftround
set autoindent
set smartindent
set smarttab

" Search settings
set hlsearch
set ignorecase
set incsearch
set smartcase

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile
set viminfo='10,:20,/20,n~/.vim/viminfo

" Set split direction
set splitright
set splitbelow

no <Leader><Esc> :noh<CR>
no <Leader>n :bn<CR>
no <Leader>b :bp<CR>
no <Leader>l :ls<CR>
no <Leader>i :IndentLinesToggle<CR>
no <Leader>d :difft<CR>
no <Leader>f :diffo!<CR>
no <Leader>c :colorscheme 
no <Leader>v :vert sb 
no <F8> :NERDTreeToggle<CR>
no <F9> :NERDTreeFocus<CR>
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

"" Prettier
let g:prettier#config#arrow_parens="avoid"

"" SirVer/ultisnips
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsListSnippets="<C-Tab>"
let g:UltiSnipsEditSplit="vertical"

"" Yggdroot/indentLine
let g:indentLine_enabled=0

"" mattn/emmet-vim
let g:user_emmet_install_global=0
autocmd FileType html,css,scss,php,javascript,typescriptreact EmmetInstall

"" Raimondi/delimitMate
let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1

let g:vim_markdown_folding_disabled=1
au FileType markdown set wrap
