-- Snacks is a plugin that provides a set of features for managing files and buffers.
--
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true }, -- 阻止 lsp，treesitter attch 大文件 buffer
    dashboard = require("plugins.utils.snacks_config.dashboard"),
    explorer = {
      enabled = true,
    },
    indent = { enabled = true },
    gitbrowse = require("plugins.utils.snacks_config.gitbrowse"),
    lazygit = require("plugins.utils.snacks_config.lazygit"),
    terminal = require("plugins.utils.snacks_config.terminal"),
    -- input = { enabled = true },
    -- notifier = {
    --   enabled = false,
    --   timeout = 3000,
    -- },
    -- picker = { enabled = true },
    -- quickfile = { enabled = true },
    -- scope = { enabled = true },
    -- scroll = { enabled = true }, -- 平滑滚动，不需要使用 vim-smoothie 插件
    -- statuscolumn = { enabled = true },
    -- words = { enabled = true },
    -- styles = {
    --   notification = {
    --     -- wo = { wrap = true } -- Wrap notifications
    --   },
    -- },
  },
  -- stylua: ignore
  keys = {
    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },

    { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
    { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
    { "<leader>gS", function() Snacks.picker.git_stash() end, desc = "Git Stash" },
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },

    { "<leader>t",      function() Snacks.terminal() end, desc = "Toggle Terminal" },
  },
}
