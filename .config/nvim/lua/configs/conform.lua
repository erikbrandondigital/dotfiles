local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    html = { "prettierd" },
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    markdown = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    ["*"] = { "trim_whitespace" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
