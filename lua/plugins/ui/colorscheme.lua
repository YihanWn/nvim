-- NOTE: theme config
-- gruvbox
-- tokyonight
-- cobalt2

-- tokyonight
return { -- You can easily change to a different colorscheme.
	-- Change the name of the colorscheme plugin below, and then
	-- change the command in the config to whatever the name of that colorscheme is.
	--
	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
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

	-- gruvbox
	-- 	"ellisonleao/gruvbox.nvim", -- Gruvbox plugin
	-- 	priority = 1000, -- 使这个主题加载优先级最高
	-- 	config = true, -- 确保在插件加载后执行配置
	-- 	opts = { -- 传入你的配置选项
	-- 		terminal_colors = true, -- add neovim terminal colors
	-- 		undercurl = true,
	-- 		underline = true,
	-- 		bold = true,
	-- 		italic = {
	-- 			strings = true,
	-- 			emphasis = true,
	-- 			comments = true,
	-- 			operators = false,
	-- 			folds = true,
	-- 		},
	-- 		strikethrough = true,
	-- 		invert_selection = false,
	-- 		invert_signs = false,
	-- 		invert_tabline = false,
	-- 		invert_intend_guides = false,
	-- 		inverse = true, -- invert background for search, diffs, statuslines and errors
	-- 		contrast = "", -- can be "hard", "soft" or empty string
	-- 		palette_overrides = {},
	-- 		overrides = {},
	-- 		dim_inactive = false,
	-- 		transparent_mode = false,
	-- 	},
	-- 	init = function()
	-- 		vim.o.background = "dark" -- or "light" for light mode
	-- 		vim.cmd("colorscheme gruvbox")
	-- 	end,

	-- cobalt2
	"lalitmee/cobalt2.nvim",
	envent = { "ColorSchemePre" },
	dependencies = { "tjdevries/colorbuddy.nvim", tag = "v1.0.0" },
	init = function()
		require("colorbuddy").colorscheme("cobalt2")
	end,
}
