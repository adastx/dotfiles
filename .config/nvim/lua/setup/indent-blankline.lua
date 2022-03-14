vim.cmd('highlight IndentBlanklineChar guifg=#3b414c gui=nocombine')

require("indent_blankline").setup {
    char = "┊",
    show_trailing_blankline_indent = false,
    filetype_exclude = {
        "help",
        "terminal",
        "alpha",
        "packer",
        "lspinfo",
        "TelescopePrompt",
        "TelescopeResults",
        "lsp-installer",
        "",
    },
    buftype_exclude = { "terminal" },
}
