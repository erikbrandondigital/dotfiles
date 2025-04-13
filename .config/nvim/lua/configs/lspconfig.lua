-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()
local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"
local M = require "chadrc"

-- LSP servers to install
local servers = {
  "html",
  "cssls",
  "ts_ls",
  "pyright",
  "tailwindcss",
  "twiggy_language_server",
  "angularls",
  "emmet_ls",
}

-- Install prettier in Mason (not included in Lazy)
M.mason = {
  pkgs = {
    "prettier",
    "black",
  },
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
