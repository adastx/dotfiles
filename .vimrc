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

colorscheme default
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorLineNr cterm=bold ctermbg=NONE ctermfg=Yellow
set cursorline
