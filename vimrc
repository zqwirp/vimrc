call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-eunuch'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'nanotech/jellybeans.vim'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'
Plug 'leafgarland/typescript-vim'
Plug 'herringtondarkholme/yats'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-haml'
Plug 'preservim/vim-markdown'
Plug 'prettier/vim-prettier'
call plug#end()

" Important default settings
set nocompatible
set encoding=utf-8
syntax enable
filetype plugin on
filetype plugin indent on

colorscheme jellybeans
set background=dark
set termguicolors
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"


" Important ettings
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

cabbrev vsb vert sb

no <Leader><Esc> :noh<CR>
no <Leader>n :bn<CR>
no <Leader>b :bp<CR>
no <Leader>l :ls<CR>
no <Leader>i :IndentLinesToggle<CR>
no <Leader>d :difft<CR>
no <Leader>f :diffo!<CR>
no <F8> :NERDTreeToggle<CR>
no <F9> :NERDTreeFocus<CR>

autocmd FileType javascriptreact,typescriptreact set filetype=javascript

" ale
let g:ale_enabled = 1
let b:ale_linters = ['eslint']
let g:ale_linters_explicit = 1
" let g:ale_lint_delay = 1000
" let g:ale_lint_on_text_changed = 'insert'
let g:ale_lint_on_enter = 0

"" Prettier
let g:prettier#config#arrow_parens = "avoid"

"" SirVer/ultisnips
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsListSnippets = "<C-Tab>"
let g:UltiSnipsEditSplit = "vertical"

"" Yggdroot/indentLine
let g:indentLine_enabled = 0

"" mattn/emmet-vim
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,php,javascript EmmetInstall

"" Raimondi/delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

let g:vim_markdown_folding_disabled = 1
au FileType markdown set wrap
