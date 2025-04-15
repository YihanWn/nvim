-- NOTE: theme config
-- gruvbox-material
-- tokyonight
-- cobalt2
-- catppuccin

-- use `:Telescope colorscheme` to see installed colorscheme
return {
  -- tokyonight
  -- "folke/tokyonight.nvim",
  -- priority = 1000, -- Make sure to load this before all the other start plugins.
  -- init = function()
  --   -- 'tokyonight-night', 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
  --   vim.cmd.colorscheme("tokyonight-night")
  --   vim.cmd.hi("Comment gui=none")
  -- end,

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

  -- catppuccin
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  init = function()
    require("catppuccin").setup({
      flavour = "macchiato", -- latte, frappe, macchiato, mocha, auto
      background = { -- :h background
        light = "latte",
        dark = "macchiato",
      },
      transparent_background = false, -- disables setting the background color.
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      color_overrides = {},
      custom_highlights = {},
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    })

    -- setup must be called before loading
    vim.cmd.colorscheme("catppuccin")
  end,
}
