call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'Raimondi/delimitMate'

Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier'
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'

Plug 'fatih/vim-go'

Plug 'preservim/vim-markdown'

Plug 'nanotech/jellybeans.vim'
call plug#end()

syntax enable
filetype plugin on
filetype plugin indent on

set nocompatible
set encoding=utf-8

set number
set nowrap
set mouse-=a
set cursorline
set backspace=indent,eol,start

set showcmd
set showmode
set showmatch

set wildmenu
" set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

if ($TERM == "st-256color")
  colorscheme jellybeans
  set background=dark
  set termguicolors
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
endif

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
no <Leader><Esc> :noh<CR>
no <Leader>n :bn<CR>
no <Leader>b :bp<CR>
no <Leader>l :ls<CR>
no <Leader>i :IndentLinesToggle<CR>
cabbrev vsb vert sb

autocmd FileType sass,scss set filetype=css
" autocmd FileType javascriptreact,typescriptreact,vue set filetype=javascript

"" prettier/vim-prettier
let g:prettier#config#arrow_parens = "avoid"

""mattn/emmet-vim
let g:user_emmet_install_global = 0
autocmd FileType html,css,php,javascript,vue EmmetInstall

""dense-analysis/ale
let g:ale_enabled=0
let b:ale_linters=["eslint"]
let g:ale_linters_explicit=1
" let g:ale_lint_delay = 1000
" let g:ale_lint_on_text_changed="insert"
let g:ale_lint_on_enter = 0

""SirVer/ultisnips
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsListSnippets="<C-Tab>"
let g:UltiSnipsEditSplit="vertical"

""Yggdroot/indentLine
let g:indentLine_enabled=0

""Raimondi/delimitMate
let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1

"" vim: ts=2 sts=2 sw=2 et
