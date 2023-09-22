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
Plug 'mg979/vim-visual-multi'

Plug 'mattn/emmet-vim'

" prettier 'for' load plugin only for editing supported files
Plug 'prettier/vim-prettier'

Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'

" no need to use this plugin because already use yats embedded in vim-polyglot
" Plug 'leafgarland/typescript-vim'

Plug 'fatih/vim-go'

Plug 'rhysd/vim-clang-format'

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

colorscheme jellybeans
set background=dark
set termguicolors

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

no <Leader><Esc> :noh<CR>
no <Leader>n :bn<CR>
no <Leader>b :bp<CR>
no <Leader>l :ls<CR>
no <Leader>i :IndentLinesToggle<CR>

autocmd FileType go no <buffer> <Leader>p :GoFmt<CR>
autocmd FileType c,h no <buffer> <Leader>p :ClangFormat<CR>

" no need for this command below because prettier already configured to load for certain filetype
" autocmd FileType html,css,sass,scss,php,javascript,javascriptreact,vue no <buffer> <Leader>p :Prettier<CR>

" autocmd FileType sass,scss set filetype=css
" autocmd FileType javascriptreact,typescriptreact,vue set filetype=javascript

" prettier/vim-prettier
let g:prettier#config#print_width="80"
let g:prettier#config#tab_width="2"
let g:prettier#config#semi="true"
let g:prettier#config#single_quote="false"
let g:prettier#config#jsx_single_quote="true"
let g:prettier#config#trailing_comma="es5"
let g:prettier#config#bracket_spacing="true"
let g:prettier#config#bracket_same_line="true"
let g:prettier#config#arrow_parens="avoid"

" preservim/nerdtree
no <F9> :NERDTreeToggle<CR>

" mattn/emmet-vim
let g:user_emmet_install_global=0
autocmd FileType html,css,sass,scss,php,javascript,javascriptreact,typescript,typescriptreact,vue,ejs EmmetInstall
" au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.ejs setfiletype html

" dense-analysis/ale
let g:ale_enabled=0 " Disable ALE by default, set 0
let g:ale_linters_explicit=1 " prevent ALE to run anything other than what you've explicitly asked for, set 1
let g:ale_lint_delay=2000 " ALE uses a timeout which is cancelled and reset every time you type
" let g:ale_lint_on_text_changed="insert"
" let g:ale_lint_on_enter=0 " When this option is set to `1`, the BufWinEnter event will be used to apply linters when buffers are first opened. If this is not desired, this variable can be set to `0` in your vimrc file to disable this behavior.

" SirVer/ultisnips
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsListSnippets="<C-Tab>"
let g:UltiSnipsEditSplit="vertical"

" Yggdroot/indentLine
let g:indentLine_enabled=0

" Raimondi/delimitMate
let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1

" preservim/vim-markdown
let g:vim_markdown_folding_disabled=1

let g:clang_format#style_options = {
	\ "ColumnLimit" : 0,
	\ "ReflowComments" : "false"}

" leafgarland/typescript-vim
" disable plugin custom indenter 
" let g:typescript_indent_disable=1

"" vim: ts=2 sts=2 sw=2 et
