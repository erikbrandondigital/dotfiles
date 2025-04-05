local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    html = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    markdown = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    ["*"] = { "trim_whitespace" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
