require("bufferline").setup {
    options = {
        offsets = { {
            filetype = "NvimTree",
            padding = 1,
        } },
        diagnostics = "nvim_lsp",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        separator_style = "thin",
        show_close_icon = false,
    },
}
