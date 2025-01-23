-- NOTE:
-- Highlight todo, notes, etc in comments
-- gcc 注释代码
return {
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		"numToStr/Comment.nvim", -- gcc和gc注释
	},
	event = "VeryLazy",
}
