require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "rust_analyzer", "angularls", "tsserver", "html", "emmet_ls", "jdtls", "yamlls",
    "svelte" , "tailwindcss"},
})
