require("bufferline").setup {
    options = {
        offsets = { {
            filetype = "NvimTree",
            padding = 1,
        } },
        diagnostics = "nvim_lsp",
        tab_size = 20,
        show_close_icon = false,
    },
}
