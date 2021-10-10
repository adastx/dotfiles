local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local servers = { 'omnisharp', 'html', 'sumneko_lua', 'bashls', 'tsserver', 'cssls' }
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        capabilities = capabilities,
    }
end

vim.o.completeopt = 'menuone,noselect'

-- CMP
local cmp = require 'cmp'

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

cmp.setup {
    snippet = {
        expand = function(args)
            vim.fn["UltiSnips#Anon"](args.body)
        end,
    },
    mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        ["<Tab>"] = cmp.mapping(function(fallback)
            if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                vim.fn.feedkeys(t("<ESC>:call UltiSnips#JumpForwards()<CR>"))
            else
                fallback()
            end
        end, { "i", "s", }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
                return vim.fn.feedkeys(t("<ESC>:call UltiSnips#JumpBackwards()<CR>"))
            else
                fallback()
            end
        end, { "i", "s", }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'ultisnips' },
    },
}

-- C#
local pid = vim.fn.getpid()

require 'lspconfig'.omnisharp.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    on_attach = function(_, bufnr)
        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    end,
    cmd = { "/usr/bin/omnisharp", "--languageserver" , "--hostPID", tostring(pid) },
}

-- LUA
local sumneko_root_path = "/home/adam/Documents/github/lua-language-server"
local sumneko_binary = sumneko_root_path.."/bin/Linux/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path.."/main.lua"};
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = runtime_path,
            },
            diagnostics = {
                globals = {'vim'},
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
}

require'lsp_signature'.setup {
    cfg = {
        floating_window = true,
        floating_window_above_cur_line = true,
        fix_pos = false,  -- set to true, the floating window will not auto-close until finish all parameters
        hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
        max_height = 12,
        max_width = 120,
        handler_opts = {
            border = "single"   -- double, single, shadow, none
        },
        extra_trigger_chars = {}, -- Array of extra characters that will trigger signature completion, e.g., {"(", ","}
        zindex = 200, -- by default it will be on top of all floating windows, set to <= 50 send it to bottom
        padding = '', -- character to pad on left and right of signature can be ' ', or '|'  etc
        timer_interval = 200, -- default timer check interval set to lower value if you want to reduce latency
        toggle_key = nil -- toggle signature on and off in insert mode,  e.g. toggle_key = '<M-x>'
    }
}

-- HTML, CSS, JS (TS), BASH
require'lspconfig'.html.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.bashls.setup{}

-- Treesitter
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    },
}

require("toggleterm").setup{
    -- size can be a number or function which is passed the current terminal
    size = 65,
    open_mapping = [[<c-\>]],
    hide_numbers = true, -- hide the number column in toggleterm buffers
    persist_size = true,
    direction = 'vertical',
    close_on_exit = true, -- close the terminal window when the process exits
}

-- Misc
require "lsp_signature".setup()
require('kommentary.config').use_extended_mappings()
vim.o.tabline = '%!v:lua.require\'luatab\'.tabline()'
