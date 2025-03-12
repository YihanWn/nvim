-- NOTE: theme config
-- gruvbox
-- tokyonight
-- cobalt2

return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  -- tokyonight
  -- 'folke/tokyonight.nvim',
  -- priority = 1000, -- Make sure to load this before all the other start plugins.
  -- init = function()
  --   -- Load the colorscheme here.
  --   -- Like many other themes, this one has different styles, and you could load
  --   -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
  --   vim.cmd.colorscheme 'tokyonight-night'
  --
  --   -- You can configure highlights by doing something like:
  --   vim.cmd.hi 'Comment gui=none'
  -- end,
  --

  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.g.gruvbox_material_foreground = material -- Available values:   `'material'`, `'mix'`, `'original'`
    vim.g.gruvbox_material_background = soft -- Available values:   `'hard'`, `'medium'`, `'soft'`
    vim.g.gruvbox_material_enable_italic = true
    vim.cmd.colorscheme("gruvbox-material")
  end,

  -- cobalt2
  -- "lalitmee/cobalt2.nvim",
  -- envent = { "ColorSchemePre" },
  -- dependencies = { "tjdevries/colorbuddy.nvim", tag = "v1.0.0" },
  -- init = function()
  -- 	require("colorbuddy").colorscheme("cobalt2")
  -- end,
}
