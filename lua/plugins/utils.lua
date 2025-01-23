return {
	-- j,k 速度逐渐加快
	-- {
	-- 	"rhysd/accelerated-jk",
	-- 	config = function()
	-- 		vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj)")
	-- 		vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk)")
	-- 	end,
	-- },

	-- 重新打开文件时,光标定位到上次关闭时的位置
	{
		"ethanholz/nvim-lastplace",
		config = true,
	},

	-- 拼写检查
	-- {
	-- 	"kamykn/spelunker.vim",
	-- 	config = function()
	-- 		vim.g.spelunker_check_type = 2
	-- 	end,
	-- },
	-- Markdown 预览插件, 使用 :Glow 预览
	{
		"ellisonleao/glow.nvim",
		config = true,
	},

	-- 用的比较少，而且有 bug，按下 <c-w>p 后，窗口下没有制定跳转的字符
	-- {
	-- 	"s1n7ax/nvim-window-picker",
	-- 	config = function()
	-- 		require("window-picker").setup({
	-- 			filter_rules = {
	-- 				include_current_win = true,
	-- 				bo = {  -- 过滤 fidget 和 neo-tree 窗口
	-- 					filetype = { "fidget", "neo-tree" },
	-- 				},
	-- 			},
	-- 		})
	-- 		vim.keymap.set("n", "<c-w>p", function()
	-- 			local window_number = require("window-picker").pick_window()
	-- 			if window_number then
	-- 				vim.api.nvim_set_current_win(window_number)
	-- 			end
	-- 		end)
	-- 	end,
	-- },
}
