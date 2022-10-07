vim.g.mapleader = ' '
vim.b.mapleader = ' '

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<C-L>', ':nohl<CR><C-L>', opts)
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)
-- map('i', 'kj', '<Esc>', opts)
-- map('t', 'kj', '<C-\\><C-n>', { noremap = true })
map('t', '<C-\\>', '<C-\\><C-n>', { noremap = true })

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
map('n', '<leader><left>', ':wincmd h<CR>', opts)
map('n', '<leader><down>', ':wincmd j<CR>', opts)
map('n', '<leader><up>', ':wincmd k<CR>', opts)
map('n', '<leader><right>', ':wincmd l<CR>', opts)

map('n', '<leader>p', '<cmd>Telescope find_files<cr>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)

map('n', '<leader>ds', '<cmd>Telescope lsp_document_symbols<cr>', opts)
map('n', '<leader>ws', '<cmd>Telescope lsp_workspace_symbols<cr>', opts)
map('n', '<leader>gd', '<cmd>Telescope lsp_definitions<cr>', opts)
map('n', '<leader>gD', '<cmd>Telescope lsp_declarations<cr>', opts)
map('n', '<leader>gr', '<cmd>Telescope lsp_references<cr>', opts)
map('n', '<leader>gi', '<cmd>Telescope lsp_implementations<cr>', opts)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
map('n', '<leader>xn', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
map('n', '<leader>xN', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
map('n', '<leader>xx', '<cmd>Telescope lsp_code_actions<cr>', opts)
map('n', '<leader>xX', '<cmd>Telescope lsp_range_code_actions<cr>', opts)

map('n', '<leader>co', ':copen<CR>', opts)
map('n', '<leader>cc', ':cclose<CR>', opts)
map('n', '<leader>cn', ':cnext<CR>', opts)
map('n', '<leader>cp', ':cprevious<CR>', opts)
map('n', '<leader>ct', ':cfirst<CR>', opts)
map('n', '<leader>cl', ':clast<CR>', opts)
