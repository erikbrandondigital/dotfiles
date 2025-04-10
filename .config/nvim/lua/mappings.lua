require "nvchad.mappings"

local map = vim.keymap.set
local unmap = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

--- This fixes an issue with the vim-tmux-navigator + nvchad in which the base nvchad
--- key mappings were conflicting with vim-tmux-navigator ones.
--- https://github.com/christoomey/vim-tmux-navigator/issues/387#issuecomment-2266786723
unmap("n", "<c-h>")
unmap("n", "<c-j>")
unmap("n", "<c-k>")
unmap("n", "<c-l>")
map("n", "<c-h>", "<cmd>:TmuxNavigateLeft<cr>")
map("n", "<c-j>", "<cmd>:TmuxNavigateDown<cr>")
map("n", "<c-k>", "<cmd>:TmuxNavigateUp<cr>")
map("n", "<c-l>", "<cmd>:TmuxNavigateRight<cr>")
map("n", "<c-\\>", "<cmd>:TmuxNavigatePrevious<cr>")

--- Configures keymap for LSP Code Actions
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
