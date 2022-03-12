local use = require('packer').use
require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'adast9/onedark.nvim'
    use 'nathom/filetype.nvim'
    use {
        'lewis6991/impatient.nvim',
        config = function()
            require("impatient")
        end
    }

    use 'tpope/vim-surround'
    use {
        'b3nj5m1n/kommentary',
        keys = {
            {"n", "gcc"},
            {"n", "gc"},
            {"v", "gc"},
        },
        config = function()
            require "setup.kommentary"
        end
    }

    use {
        'williamboman/nvim-lsp-installer',
        -- after = 'nvim-lspconfig',
        config = function()
            require "setup.nvim-lsp-installer"
        end
    }

    use 'neovim/nvim-lspconfig'
    -- use {
    --     'neovim/nvim-lspconfig',
    --     after = { 'nvim-cmp' },
    --     event = { 'BufRead', 'BufNewFile', 'InsertEnter' },
    -- }

    use {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        config = function() 
            require "setup.nvim-cmp"
        end,
        wants = 'LuaSnip',
        requires = {
            {
                'hrsh7th/cmp-nvim-lsp'
            },
            {
                "L3MON4D3/LuaSnip",
                wants = "friendly-snippets",
                event = "InsertCharPre",
                config = function()
                    require("luasnip/loaders/from_vscode").lazy_load()
                end
            },
            {
                "rafamadriz/friendly-snippets",
                event = "InsertCharPre"
            },
            {
                "saadparwaiz1/cmp_luasnip",
                event = "InsertCharPre"
            }
        }
    }

    use {
        "ray-x/lsp_signature.nvim",
        event = 'InsertEnter',
        -- event = { 'BufRead' , 'BufNewFile' },
        config = function()
            require "setup.lsp_signature"
        end
    }

    use {
        "windwp/nvim-autopairs",
        after = { 'nvim-cmp'},
        config = function()
            require('nvim-autopairs').setup{}
        end
    }

    use {
        "lukas-reineke/indent-blankline.nvim",
        event = { 'BufRead' , 'BufNewFile' },
        config = function()
            require "setup.indent-blankline"
        end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/popup.nvim',
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-fzy-native.nvim',
            'BurntSushi/ripgrep'
        }
    }

    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        event = { 'BufRead' , 'BufNewFile' },
        config = function()
            require('gitsigns').setup()
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require "setup.nvim-treesitter"
        end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function()
            require "setup.lualine"
        end
    }
end)
