-- NOTE: Display file path in top status line
-- barbecue
return {
	"utilyre/barbecue.nvim",
	name = "barbecue",
	event = "VeryLazy",
	version = "*",
	dependencies = {
		"SmiteshP/nvim-navic",
		"nvim-tree/nvim-web-devicons", -- optional dependency
	},
	opts = {
		-- configurations go here
	},
}
