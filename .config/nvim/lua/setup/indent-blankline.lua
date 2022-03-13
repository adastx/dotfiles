vim.cmd('highlight IndentBlanklineChar guifg=#3b414c gui=nocombine')

require("indent_blankline").setup {
    char = "┊",
    show_trailing_blankline_indent = false,
    buftype_exclude = {'startify', 'help', 'terminal', 'packer'},
    filetype_exclude = {'startify', 'help', 'terminal', 'packer'},
}
