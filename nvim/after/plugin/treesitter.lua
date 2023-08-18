require 'nvim-treesitter.configs'.setup {
  indent = {
    enable = true
  },
  highlight = {
    enable = true
  },
  ensure_installed = { "lua", "css", "scss", "rust", "tsx", "typescript", "yaml", "json", "http", "html",
    "markdown", "java", "javascript", "graphql" }
}
