call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
" Plug 'tpope/vim-eunuch'
Plug 'airblade/vim-gitgutter'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'

Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier'

Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'herringtondarkholme/yats'
Plug 'fatih/vim-go'

Plug 'preservim/vim-markdown'
Plug 'Raimondi/delimitMate'
Plug 'nanotech/jellybeans.vim'
call plug#end()

syntax enable
filetype plugin on
filetype plugin indent on
set nocompatible
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
set splitright
set splitbelow
colorscheme jellybeans
set background=dark
set termguicolors
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"


set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set shiftround
set autoindent
set smartindent
set smarttab

set hlsearch
set ignorecase
set incsearch
set smartcase

set nobackup
set nowb
set noswapfile
set viminfo='10,:20,/20,n~/.vim/viminfo

no <Leader><Esc> :noh<CR>
no <Leader><F3> :set pastetoggle<CR>
no <Leader>n :bn<CR>
no <Leader>b :bp<CR>
no <Leader>l :ls<CR>
no <Leader>i :IndentLinesToggle<CR>
no <Leader>d :difft<CR>
no <Leader>f :diffo!<CR>
no <F8> :NERDTreeFocus<CR>
no <F9> :NERDTreeToggle<CR>
cabbrev vsb vert sb

autocmd FileType javascriptreact,typescriptreact set filetype=javascript
" autocmd FileType *.go \
"   no <Leader>p :GoFmt<CR>
"   no <Leader>i :GoImports<CR>
autocmd FileType sass,scss set filetype=css

"Prettier
let g:prettier#config#arrow_parens = "avoid"

"mattn/emmet-vim
let g:user_emmet_install_global = 0
autocmd FileType html,css,php,javascript EmmetInstall

" ale
let g:ale_enabled = 0
let b:ale_linters = ['eslint']
let g:ale_linters_explicit = 1
" let g:ale_lint_delay = 1000
" let g:ale_lint_on_text_changed = 'insert'
let g:ale_lint_on_enter = 0

"SirVer/ultisnips
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsListSnippets = "<C-Tab>"
let g:UltiSnipsEditSplit = "vertical"

"Yggdroot/indentLine
let g:indentLine_enabled = 0

"Raimondi/delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
