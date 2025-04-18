local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    html = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    markdown = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    python = { "black" },
    ["*"] = { "trim_whitespace" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 1000,
    lsp_fallback = true,
  },
}

return options
