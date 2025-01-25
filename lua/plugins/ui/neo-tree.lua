-- NOTE: Browse the file system
-- neo-tree

-- 使用 ? 显示帮助信息
return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	event = "VimEnter",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "<C-e>", ":Neotree reveal<CR>", desc = "NeoTree reveal", silent = true },
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					["<C-e>"] = "close_window",
				},
			},
		},
	},
}
