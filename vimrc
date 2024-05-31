" VIM-PLUG BOOTSTRAP
let data_dir = '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" INITIALIZE PLUGIN WITH VIM-PLUG
call plug#begin()
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'
Plug 'dstein64/vim-startuptime', { 'on': 'StartupTime' }
Plug 'Yggdroot/indentLine', { 'on': 'IndentLinesToggle' }

Plug 'Raimondi/delimitMate'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

Plug 'prettier/vim-prettier', {
            \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'vue', 'svelte', 'yaml', 'html'],
            \ 'on': 'Prettier'
            \ }
Plug 'pangloss/vim-javascript', {
            \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'vue', 'svelte', 'yaml', 'html']
            \ }
Plug 'mattn/emmet-vim', {
            \ 'for': ['javascriptreact', 'typescriptreact', 'css', 'less', 'scss', 'vue', 'svelte', 'html']
            \ }

Plug 'rhysd/vim-clang-format', {
            \ 'for': ['c', 'cpp', 'objc']
            \ }

Plug 'fatih/vim-go', { 'for': ['go','gomod'], 'do': ':GoUpdateBinaries' }
call plug#end()

set nocompatible
set encoding=utf-8

syntax enable
filetype plugin indent on

" set number
" set relativenumber
set numberwidth=1
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
set laststatus=1

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

" set viminfo='100,<50,s10,h " DEFAULT
set viminfo='100,<50,s10,h,n~/.vim/viminfo

set pastetoggle=<F3>

cabbrev vsb vert sb
cabbrev evrc e $HOME/.vim/vimrc
cabbrev som source $MYVIMRC
cabbrev ntt NERDTreeToggle
cabbrev ilt IndentLinesToggle
cabbrev sut StartupTime
cabbrev setn set number!

nnoremap <Leader><Esc> :noh<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>ls :ls<CR>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

command! ChmX execute "!chmod +x %"

" vim: ts=4 sts=4 sw=4 et

