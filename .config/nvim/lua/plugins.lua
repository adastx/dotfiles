local packer = require("packer")

local plugins = {
    { "nathom/filetype.nvim" },

    { 
        "nvim-lua/plenary.nvim",
        opt = true,
    },

    {
        "lewis6991/impatient.nvim",
        config = function() 
            require("impatient") 
        end,
    },

    { 
        "wbthomason/packer.nvim",
        event = "VimEnter",
    },

    { 
        "adast9/onedark.nvim",
        after = "packer.nvim",
        config = function()
            require('onedark').load()
        end,
    },

    {
        "kyazdani42/nvim-web-devicons",
        after = "onedark.nvim"
    },

    {
        "nvim-lualine/lualine.nvim",
        after = "nvim-web-devicons",
        config = function()
            require "setup.lualine"
        end,
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        event = { "BufRead" , "BufNewFile" },
        config = function()
            require "setup.indent-blankline"
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufRead" , "BufNewFile" },
        config = function()
            require "setup.nvim-treesitter"
        end,
        run = ':TSUpdate',
    },

    {
        "lewis6991/gitsigns.nvim",
        event = { "BufRead" , "BufNewFile" },
        wants = "plenary.nvim",
        config = function()
            require('gitsigns').setup()
        end,
    },

    -- lsp stuff
    
    { "neovim/nvim-lspconfig" },

    {
        "williamboman/nvim-lsp-installer",
        after = "nvim-lspconfig",
        config = function()
            require "setup.nvim-lsp-installer"
        end,
    },

    {
        "ray-x/lsp_signature.nvim",
        after = "nvim-lspconfig",
        event = 'InsertEnter',
        config = function()
            require "setup.lsp_signature"
        end
    },

    -- load luasnips + cmp related in insert mode only

    {
        "L3MON4D3/LuaSnip",
        wants = "friendly-snippets",
        event = "InsertEnter",
        config = function()
            require("luasnip/loaders/from_vscode").lazy_load()
        end,
    },

    {
        "rafamadriz/friendly-snippets",
        module = "cmp_nvim_lsp",
    },

    {
        "hrsh7th/nvim-cmp",
        after = "LuaSnip",
        config = function()
            require "setup.nvim-cmp"
        end,
    },


    {
        "saadparwaiz1/cmp_luasnip",
        after = "LuaSnip",
    },

    {
        "hrsh7th/cmp-nvim-lsp",
        after = "cmp_luasnip",
    },

    {
        "windwp/nvim-autopairs",
        after = "nvim-cmp",
        config = function()
            require('nvim-autopairs').setup{}
        end,
    },

    { 
        "tpope/vim-surround",
        event = { "BufRead" , "BufNewFile" },
    },

    {
        "b3nj5m1n/kommentary",
        -- event = { "BufRead" , "BufNewFile" },
        keys = { "gcc", "gc" },
        config = function()
            require "setup.kommentary"
        end,
    },

    { 
        "BurntSushi/ripgrep",
        opt = true,
    },

    {
        "nvim-telescope/telescope-fzf-native.nvim",
        opt = true,
    },

    {
        "nvim-telescope/telescope.nvim",
        module = "telescope",
        cmd = "Telescope",
        wants = { "ripgrep", "telescope-fzf-native.nvim", "plenary.nvim" },
    },
}

return packer.startup(function(use)
    for _, v in pairs(plugins) do
        use(v)
    end
end)
