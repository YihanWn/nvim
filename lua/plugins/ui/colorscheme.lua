-- NOTE: theme config
-- gruvbox-material
-- tokyonight
-- cobalt2

-- use `:Telescope colorscheme` to see installed colorscheme
return {
  -- tokyonight
  "folke/tokyonight.nvim",
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    -- 'tokyonight-night', 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme("tokyonight-storm")
    vim.cmd.hi("Comment gui=none")
  end,

  -- "sainnhe/gruvbox-material",
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   -- Optionally configure and load the colorscheme
  --   -- directly inside the plugin declaration.
  --   vim.g.gruvbox_material_foreground = material -- Available values:   `'material'`, `'mix'`, `'original'`
  --   vim.g.gruvbox_material_background = soft -- Available values:   `'hard'`, `'medium'`, `'soft'`
  --   vim.g.gruvbox_material_enable_italic = true
  --   vim.cmd.colorscheme("gruvbox-material")
  -- end,

  -- cobalt2
  -- "lalitmee/cobalt2.nvim",
  -- envent = { "ColorSchemePre" },
  -- dependencies = { "tjdevries/colorbuddy.nvim", tag = "v1.0.0" },
  -- init = function()
  -- 	require("colorbuddy").colorscheme("cobalt2")
  -- end,
}
