syntax on
filetype plugin indent on

set number	
set linebreak	
set showbreak=+++	
set textwidth=100	
set showmatch
 
set hlsearch	
set smartcase	
set ignorecase	
set incsearch	
 
set autoindent	
set shiftwidth=4	
set expandtab
set smartindent	
set smarttab	
set tabstop=4	

set ruler	
 
set undolevels=2000	
set backspace=indent,eol,start	

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'https://github.com/icymind/NeoSolarized.git'
Plug 'https://github.com/Shougo/deoplete.nvim'
Plug 'https://github.com/zchee/deoplete-jedi'

"START HASKELL PLUGINS
Plug 'https://github.com/neovimhaskell/haskell-vim.git'
"END HAKELL PLUGINS

"START SCALA PLUGINS
Plug 'https://github.com/derekwyatt/vim-scala'
"END SCALA PLUGINS

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

"Set theme for lightline
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }

"Set Leader key to space bar
let mapleader = " "

"Set EasyMotion to work with just one leader press
map <Leader> <Plug>(easymotion-prefix)

"Sane NerdTree defaults
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Set spellcheck on Markdown
autocmd FileType markdown setlocal spell

"Stop call signatures on jedivim, makes it faster
let g:jedi#show_call_signatures = "0"

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

"Enable deoplete
let g:deoplete#enable_at_startup = 1

"Fancy solarized dark setup for NeoVim
set termguicolors
colorscheme NeoSolarized
set background=dark
