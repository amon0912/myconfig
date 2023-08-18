vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
--vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Delete word


-- Create windows
keymap("n", "ss", ":split<CR><C-W>w", opts)
keymap("n", "sv", ":vsplit<CR><C-W>w", opts)

-- Close Window
keymap("n", "sx", ":close<CR>", opts)

-- Move in windows
keymap("n", "s<Space>", "<C-w>w", opts)
keymap("n", "sk", "<C-W><UP>", opts)
keymap("n", "sj", "<C-W><DOWN>", opts)
keymap("n", "sl", "<C-W><RIGHT>", opts)
keymap("n", "sh", "<C-W><LEFT>", opts)

keymap("", "<Space>e", ":NvimTreeToggle<CR>", opts)

-- Tab
keymap("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", opts)
keymap("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", opts)

--- In lsp attach function
---@diagnostic disable-next-line: undefined-global
local map = vim.api.nvim_buf_set_keymap
map(0, "n", "gn", "<cmd>Lspsaga rename<cr>", {})
map(0, "n", "gx", "<cmd>Lspsaga code_action<cr>", { silent = true, noremap = true })
map(0, "x", "gx", ":<c-u>Lspsaga range_code_action<cr>", { silent = true, noremap = true })
map(0, "n", "K", "<cmd>Lspsaga hover_doc<cr>", { silent = true, noremap = true })
map(0, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", { silent = true, noremap = true })
map(0, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", { silent = true, noremap = true })
map(0, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", { silent = true, noremap = true })
map(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
map(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})
