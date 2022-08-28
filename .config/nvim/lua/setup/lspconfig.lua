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
lspconfig.bashls.setup {
    on_attach = on_attach,
}
lspconfig.dockerls.setup {
    on_attach = on_attach,
}
lspconfig.yamlls.setup {
    on_attach = on_attach,
}
lspconfig.html.setup {
    on_attach = on_attach,
}
lspconfig.cssls.setup {
    on_attach = on_attach,
}
lspconfig.marksman.setup {
    on_attach = on_attach,
}
lspconfig.jsonls.setup {
    on_attach = on_attach,
}
lspconfig.tsserver.setup {
    on_attach = on_attach,
}
lspconfig.omnisharp.setup {
    on_attach = on_attach,
    use_mono = true,
}
lspconfig.texlab.setup {
    on_attach = on_attach,
}
vim.cmd("let g:tex_flavor = 'tex'")

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
