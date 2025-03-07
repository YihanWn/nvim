-- NOTE: preview markdown
return {

	-- 打开比较慢，而且无法打开大文件
	-- { -- glow: use ":Glow" to preview Markdown
	-- 	"ellisonleao/glow.nvim",
	-- 	-- event = "VeryLazy",
	-- 	config = {
	-- 		border = "curve", -- floating window border config
	-- 		-- style = "dark", -- filled automatically with your current editor background, you can override using glow json style
	-- 		pager = false,
	-- 		width = 80,
	-- 		height = 100,
	-- 		width_ratio = 0.7, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
	-- 		height_ratio = 0.7,
	-- 	},
	-- },

	{ -- markdown preview
		"OXY2DEV/markview.nvim",
		event = "VeryLazy",
		lazy = false,
	},
}
