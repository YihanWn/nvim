return {
	"jose-elias-alvarez/null-ls.nvim",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = {
		"jay-babu/mason-null-ls.nvim",
	},
	config = function()
		-- 告诉 mason 安装那些 lint, formater 工具
		local tools = {
			"black", -- Python formatter
		}

		require("mason-null-ls").setup({
			ensure_installed = tools,
			handlers = {},
		})

		require("null-ls").setup({
			sources = {},
		})
	end,
}
