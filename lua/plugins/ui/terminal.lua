return {
  "akinsho/toggleterm.nvim",
  version = "*",
  event = "VeryLazy",
  opts = {
    open_mapping = [[<leader>t]],
    direction = "float", -- vertical | horizontal | tab
    shade_filetypes = {},
    -- This field is only relevant if direction is set to 'vertival' or 'horizontal'
    size = 10,
    -- This field is only relevant if direction is set to 'float'
    float_opts = {
      -- The border key is *almost* the same as 'nvim_open_win'
      -- see :h nvim_open_win for details on borders however
      -- the 'curved' border is a custom border type
      -- not natively supported but implemented in this plugin.
      border = "curved", --'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
      -- terminal size
      -- width = 120,
      -- height = 40,
      -- terminal position
      -- row = 5,
      -- col = 30,
      winblend = 15, -- 透明度
      zindex = 50,
      title_pos = "center", -- 'left' | 'center' | 'right', position of the title of the floating window
    },
    hide_numbers = true,
    autochdir = true,
    shade_terminals = true,
    shade_factor = 2,
    insert_mappings = true,
    persist_size = true,
    winbar = {
      enabled = true,
      name_formatter = function(term) --  term: Terminal
        return term.name
      end,
    },
    close_on_exit = true,
    auto_scroll = true, -- automatically scroll to the bottom on terminal output
    on_open = function(term)
      -- yazi 打开的窗口也是终端模式，yazi 中按下 jk 也会进入visual mode
      -- 而且为了确认按键，yazi 下不能连续按 j 键，也就会导致 下移目录非常慢
      -- 仅在 toggleterm 窗口设置 "jk" 映射
      vim.api.nvim_buf_set_keymap(term.bufnr, "t", "jk", "<C-\\><C-n>", { noremap = true, silent = true })
    end,
  },
  keys = {
    -- 通过 ctrl + hjkl 切换窗口，主要使用在 toggle terminal direction != 'float' mode 时，从terminal切换到文本编辑窗口，使用 float mode 的话，这些 keymap 副作用
    -- { "<C-h>", [[<Cmd>wincmd h<CR>]], mode = "t", { buffer = 0 } },
    -- { "<C-j>", [[<Cmd>wincmd j<CR>]], mode = "t", { buffer = 0 } },
    -- { "<C-k>", [[<Cmd>wincmd k<CR>]], mode = "t", { buffer = 0 } },
    -- { "<C-l>", [[<Cmd>wincmd l<CR>]], mode = "t", { buffer = 0 } },
    -- { "<C-w>", [[<C-\><C-n><C-w>]], mode = "t", { buffer = 0 } },
  },
}
