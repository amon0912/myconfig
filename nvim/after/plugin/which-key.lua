local wk = require("which-key")

local mappings = {
  q = { "<cmd>q<CR>", "Quit" },
  Q = { "<cmd>q!<CR>", "Quit Without Save" },
  w = { "<cmd>w!<CR>", "Save" },
  W = { "<cmd>x<CR>", "Save And Quit" },
  t = { "<cmd>tabnew<CR>", "New Tab" },
}

local opts = { prefix = ' ' }
wk.register(mappings, opts)
