packloadall
set clipboard=unnamed
"colorscheme elford
au BufNewFile,BufRead *.sv,*.svh,*.vh,*.v so ~/vimfiles/syntax/verilog_systemverilog.vim
set nu
"------------------
"Enable matchit
runtime macros/matchit.vim
if v:version < 800
    "Start pathogen
    execute pathogen#infect()
endif
"Turn on syntax highlighting
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
"if has("gui_running")
 " if has("gui_gtk2")
  "  set guifont=Inconsolata\ 12
  "elseif has("gui_macvim")
   " set guifont=Menlo\ Regular:h14
  "elseif has("gui_win32")
    "set guifont=Consolas:h22:cANSI
  "endif
"endif
"-----------------VLSI_V_SV_UVM-------
set nocompatible 
set hlsearch 
set incsearch 
set number 
set showmode  
set tabstop=4
set path+=**
"set lines=999 columns=999
autocmd GUIEnter * simalt ~x
set autoindent
set backspace=indent,eol,start
set guifont=Consolas:h17:cANSI
set ai
set printoptions=number:y
set printfont=Consolas:h12
autocmd BufNewFile,BufRead *.v,*.vs,*.do, set syntax=verilog
"autocmd BufRead,BufNewFile *.sv,*.svh set syntax=systemverilog
:augroup Systemverilog
    autocmd!
	autocmd FileType verilog setlocal omnifunc=verilogcomplete#Complete foldmethod=indent
    autocmd FileType systemverilog setlocal omnifunc=syntaxcomplete#Complete foldmethod=indent
augroup END
set autochdir
set tabpagemax=100
map <F5> :wa!<CR>
" ////////////Enable auto-completion using Tab
set wildmenu
"set wildmode=list:longest
"set wildoptions=pum
"/////////////
set so=7
" store backup, undo, and swap files in temp directory
set backup
set backupdir=C:\WINDOWS\Temp
set backupskip=C:\WINDOWS\Temp\*
set directory=C:\WINDOWS\Temp
set writebackup




