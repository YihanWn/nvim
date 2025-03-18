-- [[ vim basic options ]]
require("core.options")

-- [[ vim keymaps ]]
require("core.keymaps")

-- [[ vim auto commands ]]
require("core.autocmds")

-- [[ neovide configuration ]]
if vim.g.neovide then
  require("core.neovide")
end

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- ordinary Neovim
local plugins = {
  "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

  -- UI Plugins
  require("plugins.ui.barbecue"), -- show cursor position in the statusline
  require("plugins.ui.bufferline"), -- add a bufferline to neovim
  require("plugins.ui.colorscheme"), -- config of theme: tokyonight, gruvbox, cobalt2
  require("plugins.ui.lualine"), -- add a statusline to neovim
  require("plugins.ui.noice"), -- replaces the UI for messages, cmdline and the popupmenu
  require("plugins.ui.terminal"),
  require("plugins.ui.yazi"),
  require("plugins.ui.zen-mode"),

  -- Language Plugins
  require("plugins.language.lsp"), -- used for completion, annotations and signatures of Neovim apis
  require("plugins.language.autocmp"), -- Autocompletion
  require("plugins.language.treesitter"), -- Highlight, edit, and navigate code
  require("plugins.language.autoformat"), -- Autoformat
  -- require("plugins.language.debug"),-- DAP plugin to debug code.
  require("plugins.language.lint"), -- Linting and fixing code

  -- Utils Plugins
  -- require("plugins.utils.accelerated"), -- Accelerated JK motions
  require("plugins.utils.autopairs"), -- auto pairs for parentheses '{', '[', '(', '"', "'"
  require("plugins.utils.comment"), -- Highlight todo, notes, etc in comments; convinient to add comments
  require("plugins.utils.flash"), -- quick move plugin
  require("plugins.utils.git"), -- Adds git related signs to the gutter, as well as utilities for managing changes
  require("plugins.utils.markdown"), -- markdown
  -- require("plugins.utils.accelerated"), -- Accelerated JK motions
  require("plugins.utils.illuminate"), -- highlight same words
  require("plugins.utils.indent_line"), -- show indent lines
  require("plugins.utils.lastplace"), -- open the last edited position
  require("plugins.utils.mini"), -- Collection of various small independent plugins/modules
  require("plugins.utils.multicursor"), -- multiple cursors
  require("plugins.utils.persistence"), -- keep nvim state
  -- require("plugins.utils.spelunker"), -- spell check
  require("plugins.utils.telescope"), -- Fuzzy Finder (files, lsp, etc)
  require("plugins.utils.which-key"), -- Useful plugin to show pending keybinds.
  -- require("plugins.utils.window-picker"), -- quick move between windows
  require("plugins.utils.snacks"),

  -- AI Plugins
  -- require("plugins.ai.copilot"), -- copilot
  -- require("plugins.ai.copilot-cmp"), -- copilot-cmp
  -- require("plugins.ai.codeium"), -- codeium
  require("plugins.ai.fittencode"), -- fittencode

  -- add own plugins to `lua/custom/plugins/*.lua` to get going.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  -- { import = "custom.plugins" },
}
-- 仅在非 neovide 环境下插入 vim-smoothie 插件（避免 nil 项）
if not vim.g.neovide then
  table.insert(plugins, require("plugins.utils.vim-smoothie")) -- neovide 使用 vim-smoothie 有bug，而且neovide 自带平滑滚动
end

-- [[ Configure and install plugins ]]
-- 插件配置方法查阅文档 https://lazy.folke.io/spec
-- require("lazy").setup(plugins, options)
require("lazy").setup(
  -- NOTE: Lazy Plugins
  plugins,
  -- NOTE: Lazy Options
  {
    ui = {
      -- If you are using a Nerd Font: set icons to an empty table which will use the
      -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
      icons = vim.g.have_nerd_font and {} or {
        cmd = "⌘",
        config = "🛠",
        event = "📅",
        ft = "📂",
        init = "⚙",
        keys = "🗝",
        plugin = "🔌",
        runtime = "💻",
        require = "🌙",
        source = "📄",
        start = "🚀",
        task = "📌",
        lazy = "💤 ",
      },
    },
  }
)

-- The line beneath this is called `modeline`. See `:help modeline`
-- 在注释中就可以设置, ts:标签宽度2个空格, sts: tab 2个空格, sw: 换行缩进两个空格, et: 空格代表制表符
-- vim: ts=2 sts=2 sw=2 et
