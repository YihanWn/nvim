-- Snacks is a plugin that provides a set of features for managing files and buffers.
--
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true }, -- 阻止 lsp，treesitter attch 大文件 buffer
    dashboard = {
      enabled = true,
      width = 60,
      row = nil, -- dashboard position. nil for center
      col = nil, -- dashboard position. nil for center
      pane_gap = 4, -- empty columns between vertical panes
      autokeys = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", -- autokey sequence
      -- These settings are used by some built-in sections
      preset = {
        -- Defaults to a picker that supports `fzf-lua`, `telescope.nvim` and `mini.pick`
        ---@type fun(cmd:string, opts:table)|nil
        pick = nil,
        -- Used by the `keys` section to show keymaps.
        -- Set your custom keymaps here.
        -- When using a function, the `items` argument are the default keymaps.
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        -- Used by the `header` section
        -- header = [[
        --   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
        --   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
        --   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
        --   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
        --   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
        --   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
        -- ]],
        --         header = [[
        --   /^--^\     /^--^\     /^--^\
        --   \____/     \____/     \____/
        --   /      \   /      \   /      \
        --   |        | |        | |        |
        --    \__  __/   \__  __/   \__  __/
        -- |^|^|^|^|^|^|^|^|^\ \^|^|^|^/ /^|^|^|^|^\ \^|^|^|^|^|^|^|
        -- | | | | | | | | | |\ \| | |/ /| | | | | | \ \ | | | | | |
        -- ##################/ /######\ \###########/ /#############
        -- | | | | | | | | | \/| | | | \/| | | | | |\/ | | | | | | |
        -- |_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|
        --         ]],
        header = [[
        ▀████▀▄▄              ▄█ 
          █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ 
  ▄        █          ▀▀▀▀▄  ▄▀  
 ▄▀ ▀▄      ▀▄              ▀▄▀  
▄▀    █     █▀   ▄█▀▄      ▄█    
▀▄     ▀▄  █     ▀██▀     ██▄█   
 ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  
  █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  
 █   █  █      ▄▄           ▄▀   
        ]],
      },
      formats = {
        key = function(item)
          return { { "[", hl = "special" }, { item.key, hl = "key" }, { "]", hl = "special" } }
        end,
      },
      sections = {
        { section = "header" },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        { section = "startup" },
      }, -- item field formatters
    },
    -- explorer = { enabled = true },
    -- indent = { enabled = true },
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
}
