" VIM-PLUG BOOTSTRAP
let data_dir = '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" INITIALIZE PLUGIN WITH VIM-PLUG
call plug#begin()
Plug 'nanotech/jellybeans.vim'
Plug 'dstein64/vim-startuptime', { 'on': 'StartupTime' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive', { 'on': 'Git' }
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine', { 'on': 'IndentLinesToggle' }

Plug 'Raimondi/delimitMate'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'prettier/vim-prettier', {
			\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'vue', 'svelte', 'yaml', 'html'],
			\ 'on': 'Prettier'
			\ }
Plug 'pangloss/vim-javascript', {
			\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'vue', 'svelte', 'yaml', 'html']
			\ }
Plug 'rhysd/vim-clang-format', {
			\ 'for': ['c', 'cpp', 'objc']
			\ }
call plug#end()

set nocompatible "event though it"s already set in archlinux.vim
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
cabbrev evc e $HOME/.vim/vimrc
cabbrev som source $MYVIMRC

nnoremap <Leader><Esc> :noh<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>b :bp<CR>

