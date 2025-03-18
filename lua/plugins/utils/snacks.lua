-- Snacks is a plugin that provides a set of features for managing files and buffers.
--
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true }, -- 阻止 lsp，treesitter attch 大文件 buffer
    explorer = { enabled = true },
    indent = { enabled = true },
    quickfile = { enabled = true }, -- render file before plugins loading
    dashboard = require("plugins.utils.snacks_config.dashboard"),
    gitbrowse = require("plugins.utils.snacks_config.gitbrowse"),
    lazygit = require("plugins.utils.snacks_config.lazygit"),
    terminal = require("plugins.utils.snacks_config.terminal"),
    zen = require("plugins.utils.snacks_config.zen"),
    notifier = require("plugins.utils.snacks_config.notifier"),
    scroll = require("plugins.utils.snacks_config.scroll"), -- 平滑滚动，不需要使用 vim-smoothie 插件
    -- picker = { enabled = true },
    -- scope = { enabled = true },
    -- statuscolumn = { enabled = true },
    -- words = { enabled = true },
    input = { enabled = false }, -- notice.nvim 插件提供更优的 cmdline, vim.ui.input 交互
  },
  -- stylua: ignore
  keys = {
    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },

    { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
    { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
    { "<leader>gS", function() Snacks.picker.git_stash() end, desc = "Git Stash" },
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },

    { "<leader>t", function() Snacks.terminal() end, desc = "Toggle Terminal" },

    { "<leader>z", function() Snacks.zen() end, desc = "Toggle Zen Mode" },

    { "<leader>n", function() Snacks.notifier.show_history() end, desc = "Notification History" },
  },
}
