vim.g.mapleader = ' '
vim.b.mapleader = ' '

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('', 'Y', 'y$', opts)
map('n', '<C-L>', ':nohl<CR><C-L>', opts)
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)
-- map('i', 'kj', '<Esc>', opts)
map('t', 'kj', '<C-\\><C-n>', { noremap = true })

map('i', ',', ',<c-g>u', opts)
map('i', '.', '.<c-g>u', opts)
map('i', '[', '[<c-g>u', opts)
map('i', '!', '!<c-g>u', opts)
map('i', '?', '?<c-g>u', opts)

map('v', 'J', ":m '>+1<CR>gv=gv", opts)
map('v', 'K', ":m '<-2<CR>gv=gv", opts)

map('n', '<leader>h', ':wincmd h<CR>', opts)
map('n', '<leader>j', ':wincmd j<CR>', opts)
map('n', '<leader>k', ':wincmd k<CR>', opts)
map('n', '<leader>l', ':wincmd l<CR>', opts)

map('n', '<leader>p', '<cmd>Telescope find_files<cr>', opts)
map('n', '<leader>P', '<cmd>Telescope file_browser hidden=true<cr>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)

map('n', '<leader>gd', '<cmd>Telescope lsp_definitions<cr>', opts)
map('n', '<leader>gD', '<cmd>Telescope lsp_declarations<cr>', opts)
map('n', '<leader>gr', '<cmd>Telescope lsp_references<cr>', opts)
map('n', '<leader>gi', '<cmd>Telescope lsp_implementations<cr>', opts)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
map('n', '<leader>xd', '<cmd>Telescope lsp_document_diagnostics<cr>', opts)
map('n', '<leader>xD', '<cmd>Telescope lsp_workspace_diagnostics<cr>', opts)
map('n', '<leader>xn', '<cmd>lua vim.lsp.diagnostic.goto_next()<cr>', opts)
map('n', '<leader>xN', '<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>', opts)
map('n', '<leader>xx', '<cmd>Telescope lsp_code_actions<cr>', opts)
map('n', '<leader>xX', '<cmd>Telescope lsp_range_code_actions<cr>', opts)
