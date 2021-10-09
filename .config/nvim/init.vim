if has('filetype')
    filetype indent plugin on
endif

if has('syntax')
    syntax on
endif

if has('mouse')
    set mouse=a
endif

if has('persistent_undo')
    set undodir=$HOME/.vim/undo
    set undofile
endif

lua require 'init'

lua << EOF
require 'colorizer'.setup {
    '*';
    '!vim';
    css = { rgb_fn = true; };
    html = { names = false; }
}
EOF

let g:ascii = [
            \ '',
            \ '',
            \ '   @@@@@@   @@@@@@@    @@@@@@   @@@@@@@@@@    @@@@@@   @@@  @@@  @@@  ',
            \ '  @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@@@@@  @@@@@@@   @@@  @@@  @@@  ',
            \ '  @@!  @@@  @@!  @@@  @@!  @@@  @@! @@! @@!  !@@       @@!  !@@  @@!  ',
            \ '  !@!  @!@  !@!  @!@  !@!  @!@  !@! !@! !@!  !@!       !@!  @!!  !@!  ',
            \ '  @!@!@!@!  @!@  !@!  @!@!@!@!  @!! !!@ @!@  !!@@!!    @!@@!@!   !!@  ',
            \ '  !!!@!!!!  !@!  !!!  !!!@!!!!  !@!   ! !@!   !!@!!!   !!@!!!    !!!  ',
            \ '  !!:  !!!  !!:  !!!  !!:  !!!  !!:     !!:       !:!  !!: :!!   !!:  ',
            \ '  :!:  !:!  :!:  !:!  :!:  !:!  :!:     :!:      !:!   :!:  !:!  :!:  ',
            \ '  ::   :::   :::: ::  ::   :::  :::     ::   :::: ::    ::  :::   ::  ',
            \ '   :   : :  :: :  :    :   : :   :      :    :: : :     :   :::  :    ',
            \ '',
            \ '',
            \] 
let g:startify_custom_header = startify#pad(g:ascii)
" autocmd FileType markdown lua require('cmp').setup.buffer { enabled = false }
