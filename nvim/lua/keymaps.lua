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
