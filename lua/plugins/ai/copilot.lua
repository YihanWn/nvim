-- NOTE: copilot
return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		-- 安全加载 Copilot 模块
		local ok, copilot = pcall(require, "copilot")
		if not ok then
			return
		end

		-- 配置 Copilot
		copilot.setup({
			panel = {
				enabled = true,
				auto_refresh = false,
				auto_trigger = true, -- 启用自动触发
				keymap = {
					jump_prev = "[[",
					jump_next = "]]",
					accept = "<CR>", -- Enter
					refresh = "gr",
					open = "<M-CR>", -- Alt + Enter
				},
				layout = {
					position = "bottom", -- | top | left | right | horizontal | vertical
					ratio = 0.4,
				},
			},
			suggestion = {
				enabled = true,
				auto_trigger = true,
				hide_during_completion = true,
				debounce = 75,
				keymap = {
					accept = "<M-l>", -- Alt + l
					accept_word = false,
					accept_line = false,
					next = "<M-]>", -- Alt + ]
					prev = "<M-[>",
					dismiss = "<C-]>", -- Ctrl + ]
				},
			},
			filetypes = { -- 设置启动 Copilot 的文件类型
				yaml = false,
				markdown = false,
				help = false,
				gitcommit = true,
				gitrebase = false,
				hgcommit = false,
				svn = false,
				cvs = false,
				["."] = false,
			},
			copilot_node_command = "node", -- Node.js version must be > 18.x
			server_opts_overrides = {},
		})

		-- 添加键映射
		local opts = { noremap = true, silent = true }
		vim.api.nvim_set_keymap("n", "<c-s>", "<cmd>lua require('copilot.suggestion').toggle_auto_trigger()<CR>", opts)
	end,
}
