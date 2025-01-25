-- NOTE: quick window shifter
-- nvim-window-picker
-- FIX: 用的比较少，而且有 bug，按下 <c-w>p 后，窗口下没有制定跳转的字符
return {
	"s1n7ax/nvim-window-picker",
	config = function()
		require("window-picker").setup({
			filter_rules = {
				include_current_win = true,
				bo = { -- 过滤 fidget 和 neo-tree 窗口
					filetype = { "fidget", "neo-tree" },
				},
			},
		})
		vim.keymap.set("n", "<c-w>p", function()
			local window_number = require("window-picker").pick_window()
			if window_number then
				vim.api.nvim_set_current_win(window_number)
			end
		end)
	end,
}
