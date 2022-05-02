vim.cmd('highlight NvimTreeIndentMarker guifg=#3b414c gui=nocombine')

require 'nvim-tree'.setup {
    hijack_cursor = true,
    renderer = {
        icons = {
            webdev_colors = true,
        },
        indent_markers = {
            enable = true,
        },
    },
    view = {
        side = "left",
        hide_root_folder = true,
    },
    git = {
        enable = false,
        ignore = false,
    },
    actions = {
        open_file = {
            resize_window = true,
        },
    },
}
