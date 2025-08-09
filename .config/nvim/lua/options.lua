require "nvchad.options"

-- Prepend mise shims to PATH
vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH

local o = vim.o
o.relativenumber = true -- Enable relative line numbers
