-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.ui = {
  statusline = {
    theme = "default",
    separator_style = "default",
    order = { "mode", "file", "git", "session", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor"},
    modules = {
      -- Add auto-session name to statusline.
      session = function ()
        return " " .. require('auto-session.lib').current_session_name(true)
      end
    }
  }
}

return M
