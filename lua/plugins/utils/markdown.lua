-- NOTE: preview markdown
return {

	{ -- glow: use ":Glow" to preview Markdown
		"ellisonleao/glow.nvim",
		event = "VeryLazy",
		config = true,
	},

	{ -- markdown preview
		"OXY2DEV/markview.nvim",
		event = "VeryLazy",
		lazy = false,
	},
}
