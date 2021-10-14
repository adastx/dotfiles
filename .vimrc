call plug#begin('~/.vim/plugged')
    Plug 'gruvbox-community/gruvbox'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'mhinz/vim-startify'
call plug#end()

if has('filetype')
    filetype indent plugin on
endif

if has('syntax')
    syntax on
endif

if has('mouse')
    set mouse=a
endif

set nocompatible
set hidden
set wildmenu
set wildignorecase 
set fileignorecase
set showcmd
set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set ruler
set laststatus=0
set confirm
set visualbell
set cmdheight=2
set relativenumber 
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab
set noswapfile
set nowrap
set background=dark

map Y y$
nnoremap <C-L> :nohl<CR><C-L>
nnoremap n nzzzv
nnoremap N Nzzzv
inoremap kj <Esc>
tnoremap kj <C-\><C-n>

inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap [ [<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

let mapleader=" "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

colorscheme gruvbox
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorLineNr cterm=bold ctermbg=Black ctermfg=Yellow
set cursorline

let g:ascii = [
\'             ,,                   ', 
\'             db                   ', 
\'                                  ', 
\"`7M'   `MF'`7MM  `7MMpMMMb.pMMMb. ", 
\'  VA   ,V    MM    MM    MM    MM ', 
\'   VA ,V     MM    MM    MM    MM ', 
\'    VVV      MM    MM    MM    MM ', 
\'     W     .JMML..JMML  JMML  JMML',
\'',
\] 
let g:startify_custom_header = startify#pad(g:ascii)
