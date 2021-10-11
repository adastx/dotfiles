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
lua require 'after'

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

autocmd FileType markdown lua require('cmp').setup.buffer { enabled = false }
