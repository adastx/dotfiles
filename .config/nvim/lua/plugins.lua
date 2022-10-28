local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    Packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
        install_path })
    vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)

    use { "wbthomason/packer.nvim" }

    use {
        "nvim-lua/plenary.nvim",
        opt = true,
    }

    use {
        "lewis6991/impatient.nvim",
        config = function()
            require("impatient")
        end,
    }

    use {
        "adastx/onedark.nvim",
        event = "VimEnter",
        config = function()
            require 'setup.onedark'
        end,
    }

    use {
        "kyazdani42/nvim-web-devicons",
        after = "onedark.nvim"
    }

    use {
        "nvim-lualine/lualine.nvim",
        after = "nvim-web-devicons",
        config = function()
            require "setup.lualine"
        end,
    }

    use {
        "lukas-reineke/indent-blankline.nvim",
        event = { "BufRead", "BufNewFile" },
        config = function()
            require "setup.indent-blankline"
        end,
    }

    use {
        "kyazdani42/nvim-tree.lua",
        cmd = { "NvimTreeToggle", "NvimTreeFindFile" },
        config = function()
            require "setup.nvim-tree"
        end,
    }

    use {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufRead", "BufNewFile" },
        config = function()
            require "setup.nvim-treesitter"
        end,
        run = ':TSUpdate',
    }

    use {
        "lewis6991/gitsigns.nvim",
        event = { "BufRead", "BufNewFile" },
        wants = "plenary.nvim",
        config = function()
            require 'setup.gitsigns'
        end,
    }

    use {
        "neovim/nvim-lspconfig",
        event = { "BufRead", "BufNewFile" },
        config = function()
            require "setup.lspconfig"
        end,
    }

    -- use {
    --     "williamboman/nvim-lsp-installer",
    --     after = "nvim-lspconfig",
    --     config = function()
    --         require "setup.lspconfig"
    --     end,
    -- }

    use {
        "ray-x/lsp_signature.nvim",
        after = "nvim-lspconfig",
        config = function()
            require "setup.lsp_signature"
        end
    }

    use {
        "L3MON4D3/LuaSnip",
        wants = "friendly-snippets",
        event = "User lspAttached",
        config = function()
            require("luasnip/loaders/from_vscode").lazy_load()
        end,
    }

    use {
        "rafamadriz/friendly-snippets",
        module = "cmp_nvim_lsp",
    }

    use {
        "hrsh7th/nvim-cmp",
        after = "LuaSnip",
        config = function()
            require "setup.nvim-cmp"
        end,
    }

    use {
        "saadparwaiz1/cmp_luasnip",
        after = { "LuaSnip", "nvim-cmp" }
    }

    use {
        "hrsh7th/cmp-nvim-lsp",
        after = "cmp_luasnip",
    }

    use {
        "windwp/nvim-autopairs",
        after = "nvim-cmp",
        config = function()
            require('nvim-autopairs').setup {}
        end,
    }

    use {
        "tpope/vim-surround",
        event = { "BufRead", "BufNewFile" },
    }

    use {
        "tpope/vim-fugitive",
        cmd = { 'G', 'Ggrep' },
        config = function()
            require "setup.fugitive"
        end,
    }

    use {
        "b3nj5m1n/kommentary",
        event = { "BufRead", "BufNewFile" },
        config = function()
            require "setup.kommentary"
        end,
    }

    use {
        "BurntSushi/ripgrep",
        opt = true,
    }

    use {
        "nvim-telescope/telescope-fzf-native.nvim",
        opt = true,
    }

    use {
        "nvim-telescope/telescope.nvim",
        module = "telescope",
        cmd = "Telescope",
        wants = { "ripgrep", "telescope-fzf-native.nvim", "plenary.nvim" },
        config = function()
            require "setup.telescope"
        end
    }

    use {
        "norcalli/nvim-colorizer.lua",
        cmd = { "ColorizerToggle" },
        config = function()
            require "colorizer".setup()
        end,
    }

    use { "iamcco/markdown-preview.nvim",
        ft = "markdown",
        run = function()
            vim.fn['mkdp#util#install']()
        end,
    }

    if Packer_bootstrap then
        require('packer').sync()
    end
end)
