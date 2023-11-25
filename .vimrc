set guifont=Consolas\ Regular\ 14
syn on
se nu
packloadall
set clipboard=unnamed
au BufNewFile,BufRead *.sv,*.svh,*.vh,*.v so ~/vimfiles/syntax/verilog_systemverilog.vim
set backspace=indent,eol,start
filetype plugin indent on
"----------plug extension---------
call plug#begin('~/vimfiles/plugged')
Plug 'itchyny/lightline.vim'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'mtdl9/vim-log-highlighting'
call plug#end()
"--------plug extension end--------------
set autoindent
set ai
set tabstop=4
syntax on
set lines=999 columns=999 "open gvim in fullscreen in Linux
""au GUIEnter * simalt ~x  "open gvim in fullscreen in windows
set guioptions+=a
set backspace=indent,eol,start
"---------------k=uses dictionary, i=uses current and included files, t=tag completion.
set complete-=k
set complete+=k
set dictionary+=~/vimfiles/syntax/verilog_systemverilog.vim
"---------------
set ff=unix
set hlsearch
set nocompatible
set autochdir
set printoptions=number:y
set printfont=Consolas\ Regular\ 14
"etc/not_required
"------------------------------
"Enable matchit
"runtime macros/matchit.vim
"if v:version < 800
    "Start pathogen
 "   execute pathogen#infect()
"endif
"------------------------------
"Enable folding based on indent (on 8.0 and greater versions)
"if v:version >= 800
 "   set foldmethod=indent
  "  set foldnestmax=10
   " set nofoldenable
    "set foldlevelstart=10
"endif
"---------------------------
"colorscheme elford
"--------------------------
set tabpagemax=100
set wildmenu
" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup




