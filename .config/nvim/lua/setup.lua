local set = vim.opt

set.termguicolors = true
set.hidden = true
set.wildmenu = true
set.showcmd = true
set.hlsearch = true
set.ignorecase = true
set.smartcase = true
set.incsearch = true
set.backspace= 'indent,eol,start'
set.pastetoggle = '<F11>'
set.confirm = true
set.relativenumber = true
set.shiftwidth = 4
set.softtabstop = 4
set.autoindent = true
set.expandtab = true
set.showmode = false
set.ruler = false
set.cmdheight = 2

vim.cmd('colorscheme gruvbox')
vim.cmd('highlight CursorLineNr cterm=bold ctermfg=Yellow ctermbg=none')
vim.cmd('highlight Normal ctermbg=none')
