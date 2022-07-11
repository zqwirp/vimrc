" Important default settings
set nocompatible
set encoding=utf-8
syntax enable
filetype plugin on
filetype plugin indent on

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'nanotech/jellybeans.vim'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'
Plug 'leafgarland/typescript-vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-haml'
Plug 'preservim/vim-markdown'
Plug 'prettier/vim-prettier'
call plug#end()

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
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
cabbrev vsb vert sb

"" Prettier
let g:prettier#config#arrow_parens = "avoid"

"" SirVer/ultisnips
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsListSnippets = "<C-Tab>"
let g:UltiSnipsEditSplit = "vertical"

"" Yggdroot/indentLine
let g:indentLine_enabled = 0

"" mattn/emmet-vim
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,php,javascript,typescriptreact EmmetInstall

"" Raimondi/delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

let g:vim_markdown_folding_disabled = 1
au FileType markdown set wrap

" let g:lightline = {
"       \ 'colorscheme': 'jellybeans',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'readonly', 'filename', 'gitbranch', 'modified' ] ],
"       \ 'right': [ [ 'lineinfo' ],
"       \              [ 'percent' ],
"       \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
"       \ },
"       \ 'component_function': {
"       \   'gitbranch': 'FugitiveHead'
"       \ },
"       \ 'mode_map': {
"       \ 'n' : 'N',
"       \ 'i' : 'I',
"       \ 'R' : 'R',
"       \ 'v' : 'V',
"       \ 'V' : 'VL',
"       \ "\<C-v>": 'VB',
"       \ 'c' : 'C',
"       \ 's' : 'S',
"       \ 'S' : 'SL',
"       \ "\<C-s>": 'SB',
"       \ 't': 'T',
"       \ },
"       \ }

"airline
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
