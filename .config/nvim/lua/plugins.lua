local use = require('packer').use
require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'romgrk/doom-one.vim'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'b3nj5m1n/kommentary'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'

    use "ray-x/lsp_signature.nvim"
    use "windwp/nvim-autopairs"
    use "lukas-reineke/indent-blankline.nvim"
    use 'kyazdani42/nvim-web-devicons'
    use 'nathom/filetype.nvim'

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
        "L3MON4D3/LuaSnip",
        requires = {
            "rafamadriz/friendly-snippets",
            "saadparwaiz1/cmp_luasnip"
        }
    }

    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require('gitsigns').setup()
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
end)
