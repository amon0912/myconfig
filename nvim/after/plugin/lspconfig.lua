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

lspconfig.angularls.setup {
  cmd = { "ngserver", "--stdio", "--tsProbeLocations", "", "--ngProbeLocations", "" },
  filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx" },
  on_attach = on_attach,
  capabilities = capabilities
}

lspconfig.tsserver.setup {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  on_attach = on_attach,
  capabilities = capabilities
}

lspconfig.html.setup {
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = { "html" },
  on_attach = on_attach,
  capabilities = capabilities
}

lspconfig.emmet_ls.setup {
  cmd = { "emmet-ls", "--stdio" },
  filetypes = { "astro", "css", "eruby", "html", "htmldjango", "javascript", "javascriptreact", "less", "pug", "sass",
    "scss", "svelte", "typescriptreact", "vue" },
  on_attach = on_attach,
  capabilities = capabilities
}

lspconfig.jdtls.setup {
  --cmd = { "jdtls", "-configuration", "/home/amon/.cache/jdtls/config", "-data", "/home/amon/.cache/jdtls/workspace" },
  filetypes = { "java" },
  on_attach = on_attach,
  capabilities = capabilities
}

lspconfig.yamlls.setup {
  cmd = { "yaml-language-server", "--stdio" },
  filetypes = { "yaml", "yaml.docker-compose" },
  settings = {
    redhat = {
      telemetry = {
        enabled = false
      }
    },
    yaml = {
      schemas = {
        ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0-standalone-strict/all.json"] = "/*.k8s.yaml",
      },
    },
  }
}

lspconfig.svelte.setup {
  cmd = { "svelteserver", "--stdio" },
  filetypes = { "svelte" },
  on_attach = on_attach,
  capabilities = capabilities
}

lspconfig.tailwindcss.setup {
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = { "aspnetcorerazor", "astro", "astro-markdown", "blade", "clojure", "django-html", "htmldjango", "edge",
    "eelixir", "elixir", "ejs", "erb", "eruby", "gohtml", "haml", "handlebars", "hbs", "html", "html-eex", "heex",
    "jade", "leaf", "liquid", "markdown", "mdx", "mustache", "njk", "nunjucks", "php", "razor", "slim", "twig", "css",
    "less", "postcss", "sass", "scss", "stylus", "sugarss", "javascript", "javascriptreact", "reason", "rescript",
    "typescript", "typescriptreact", "vue", "svelte" }
}
