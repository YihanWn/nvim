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
    statuscolumn = { enabled = true },
    toggle = { enabled = true }, -- require("plugins.utils.snacks_config.profiler"), -- 性能分析
    picker = require("plugins.utils.snacks_config.picker"), -- 平滑滚动，不需要使用 vim-smoothie 插件
    -- scope = { enabled = true },
    -- words = { enabled = true },
    profiler = { enabled = false }, -- require("plugins.utils.snacks_config.profiler"), -- 性能分析
    input = { enabled = false }, -- notice.nvim 插件提供更优的 cmdline, vim.ui.input 交互
  },
  -- stylua: ignore
  keys = {
    -- search
    { "<leader>sc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
    { "<leader>sf", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>sp", function() Snacks.picker.projects() end, desc = "Projects" },
    { "<leader>sr", function() Snacks.picker.recent() end, desc = "Recent" },
    { '<leader>s/', function() Snacks.picker.search_history() end, desc = "Search History" },
    { "<leader>sc", function() Snacks.picker.command_history() end, desc = "Command History" },
    { "<leader>sC", function() Snacks.picker.commands() end, desc = "Commands" },
    { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
    { "<leader>sD", function() Snacks.picker.diagnostics_buffer() end, desc = "Buffer Diagnostics" },
    { "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
    { "<leader>sH", function() Snacks.picker.highlights() end, desc = "Highlights" },
    { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
    { "<leader>sM", function() Snacks.picker.man() end, desc = "Man Pages" },
    { "<leader>sR", function() Snacks.picker.resume() end, desc = "Resume" },
    { "<leader>su", function() Snacks.picker.undo() end, desc = "Undo History" },
    { "<leader>uC", function() Snacks.picker.colorschemes() end, desc = "Colorschemes" },
    -- Grep
    { "<leader>sb", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
    { "<leader>sB", function() Snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
    { "<leader>sg", function() Snacks.picker.grep() end, desc = "Grep" },
    { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },
    -- git
    { "<leader>gf", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
    { "<leader>gb", function() Snacks.gitbrowse() end, desc = "Git Browse", mode = { "n", "v" } },
    { "<leader>gB", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
    { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
    { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
    { "<leader>gS", function() Snacks.picker.git_stash() end, desc = "Git Stash" },
    { "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git Diff (Hunks)" },
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    -- LSP
    { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
    { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
    { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
    { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
    { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
    { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
    -- other
    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
    { "<leader>t", function() Snacks.terminal() end, desc = "Toggle Terminal" },
    { "<leader>z", function() Snacks.zen() end, desc = "Toggle Zen Mode" },
    { "<leader>n", function() Snacks.picker.notifications() end, desc = "Notification History" },
    {"<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },
    -- { "<leader>ps", function() Snacks.profiler.scratch() end, desc = "Profiler Scratch Bufer" },
  },
}
