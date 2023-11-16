packloadall
set clipboard=unnamed
"colorscheme elford

"au BufNewFile,BufRead *.sv,*.svh,*.vh,*.v so ~/vimfiles/syntax/verilog_systemverilog.vim
set backspace=indent,eol,start
set hlsearch
set nu
"------------------
"Enable matchit
runtime macros/matchit.vim
if v:version < 800
    "Start pathogen
    execute pathogen#infect()
endif
"Turn on syntax highlighting
syntax on
"Enable filetype detection
filetype plugin indent on
"Enable folding based on indent (on 8.0 and greater versions)
if v:version >= 800
    set foldmethod=indent
    set foldnestmax=10
    set nofoldenable
    set foldlevelstart=10
endif
"----------plug extension---------
call plug#begin('~/vimfiles/plugged')
Plug 'itchyny/lightline.vim'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'mtdl9/vim-log-highlighting'
call plug#end()
"--------plug extension end--------------
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 14
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h10:cANSI
  endif
endif
"-----------------VLSI_V_SV_UVM-------
set nocompatible 
set hlsearch 
set incsearch 
set number 
set showmode 
set syntax=ON 
set autoindent
set tabstop=4
syntax on
set path+=**
set wildmenu
"set lines=999 columns=999
au GUIEnter * simalt ~x
set hlsearch
set incsearch
set number
set showmode
set autoindent
set tabstop=4
set syntax=ON
set nocompatible
set backspace=indent,eol,start
set guifont=Consolas:h14
syntax on
" store backup, undo, and swap files in temp directory
set backup
set backupdir=C:\WINDOWS\Temp
set backupskip=C:\WINDOWS\Temp\*
set directory=C:\WINDOWS\Temp
set writebackup
" //// Configure custom mappings
map <F5> :wa!<CR>
" //// Example: Map F5 to save the file
