-- NOTE: Display recently open file
-- bufferline
return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	opts = {
		options = {
			-- 使用 nvim 内置 lsp
			diagnostic = "nvim_lsp",
			-- 左侧让出 nvim-tree 的位置
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					text_align = "left",
				},
			},
		},
	},
}
