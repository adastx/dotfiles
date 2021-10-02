if has('filetype')
  filetype indent plugin on
endif

if has('syntax')
  syntax on
endif

if has('mouse')
  set mouse=a
endif

set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=0
set confirm
set visualbell
set cmdheight=2
set number
set relativenumber 
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab
set incsearch

map Y y$
nnoremap <C-L> :nohl<CR><C-L>
nnoremap n nzzzv
nnoremap N Nzzzv

" inoremap kj <Esc>
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap [ [<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
nnoremap <SPACE> <Nop>

call plug#begin()
Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox
highlight CursorLineNr cterm=bold ctermfg=Yellow ctermbg=none
highlight Normal ctermbg=none

let mapleader=" "
