local lspconfig = require('lspconfig')
require("lsp-format").setup {}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(client)
	require("lsp-format").on_attach(client)
end

lspconfig.lua_ls.setup {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	on_attach = on_attach,
	capabilities = capabilities
}
