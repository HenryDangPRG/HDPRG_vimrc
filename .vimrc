syntax on
filetype plugin indent on

set number	
set linebreak	
set showbreak=+++	
set textwidth=100	
set showmatch	
set visualbell	
 
set hlsearch	
set smartcase	
set ignorecase	
set incsearch	
 
set autoindent	
set shiftwidth=4	
set smartindent	
set smarttab	
set softtabstop=4	

set ruler	
 
set undolevels=2000	
set backspace=indent,eol,start	

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/davidhalter/jedi-vim.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'python' : 1
      \}

let g:jedi#show_call_signatures = "1"

"Set Leader key to space bar
let mapleader = " "

"Set EasyMotion to work with just one leader press
map <Leader> <Plug>(easymotion-prefix)

"Set airline theme to solarized-dark
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
