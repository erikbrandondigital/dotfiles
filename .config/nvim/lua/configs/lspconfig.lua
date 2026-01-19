-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()
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
  "ruby_lsp",
  "eslint",
}

-- Install prettier in Mason (not included in Lazy)
M.mason = {
  pkgs = { "prettier", "black" },
}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
