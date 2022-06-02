require("nvim-lsp-installer").setup {}
local lspconfig = require("lspconfig")

local function on_attach()
    vim.cmd('doautocmd User lspAttached')
    vim.cmd('augroup Format')
    vim.cmd('autocmd! * <buffer>')
    vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()')
    vim.cmd('augroup END')
end

lspconfig.sumneko_lua.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}

lspconfig.rust_analyzer.setup {
    on_attach = on_attach,
}

-- local pid = vim.fn.getpid()
-- local omnisharp_bin = "mono /home/adam/.local/share/nvim/lsp_servers/omnisharp/omnisharp-mono/OmniSharp.exe"
lspconfig.omnisharp.setup {
    use_mono = true,
    on_attach = on_attach,
    -- cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
}

-- vim.cmd("let g:tex_flavor = 'tex'")
-- lspconfig.texlab.setup {
--     on_attach = on_attach,
-- }

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
