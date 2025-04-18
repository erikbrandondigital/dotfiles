return {
  {
    "rmagatti/auto-session",
    lazy = false,
    keys = {
      -- Will use Telescope if installed or a vim.ui.select picker otherwise
      { "<leader>wf", "<cmd>SessionSearch<CR>", desc = "Session search" },
      { "<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session" },
      { "<leader>wt", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle autosave" },
    },
    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      post_restore_cmds = {
        function()
          -- Restore nvim-tree after a session is restored
          local nvim_tree_api = require "nvim-tree.api"
          nvim_tree_api.tree.open()
          nvim_tree_api.tree.change_root(vim.fn.getcwd())
          nvim_tree_api.tree.reload()
        end,
      },
    },
  },
}
