local M = {}

M.statusline = function()
  return {
    theme = "default",
    separator_style = "block",
    order = { "mode", "file", "git", "session", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
    modules = {
      -- Add auto-session name to statusline.
      session = function()
        local session_name = require("auto-session.lib").current_session_name(true)

        if session_name == nil or session_name == "" then
          return ""
        else
          return " 󰀉 " .. require("auto-session.lib").current_session_name(true)
        end
      end,
    },
  }
end

return M
