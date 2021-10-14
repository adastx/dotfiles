require'lualine'.setup {
    options = {
        icons_enabled = true,
        theme = 'gruvbox',
        component_separators = {'', ''},
        section_separators = {'', ''},
        disabled_filetypes = {'startify', 'NvimTree', 'toggleterm', 'terminal'}
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {}
}
