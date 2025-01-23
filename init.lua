-- [[ vim basic options ]]
require("core.options")

-- [[ vim keymaps ]]
require("core.keymaps")

-- [[ vim auto commands ]]
require("core.autocmds")

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
-- 插件配置方法查阅文档 https://lazy.folke.io/spec
-- require("lazy").setup(plugins, options)
require("lazy").setup(
	-- NOTE: Lazy Plugins
	{
		"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

		-- keep nvim state
		require("plugins.persistence"),

		-- config of theme: tokyonight, gruvbox, cobalt2
		require("plugins.colorscheme"),

		-- add a statusline to neovim
		-- config of lualine.nvim
		require("plugins.lualine"),

		-- Adds git related signs to the gutter, as well as utilities for managing changes
		require("plugins.git"),

		-- add a file explorer to neovim
		-- config of neo-tree.nvim
		require("plugins.neo-tree"),

		-- add a bufferline to neovim
		-- config of bufferline.nvim
		require("plugins.bufferline"),

		-- replaces the UI for messages, cmdline and the popupmenu
		-- config of noice
		require("plugins.noice"),

		-- Useful plugin to show pending keybinds.
		require("plugins.which-key"),

		-- quick move plugin
		require("plugins.flash"),

		-- Fuzzy Finder (files, lsp, etc)
		require("plugins.telescope"),

		-- used for completion, annotations and signatures of Neovim apis
		-- config of lazydev.nvim, nvim-lspconfig, mason, mason-tool-installerm, mason-lspconfig
		require("plugins.lsp"),

		-- Autocompletion
		-- config of nvim-cmp,
		require("plugins.autocmp"),

		-- Highlight, edit, and navigate code
		-- config of nvim-treesitter
		require("plugins.treesitter"),

		-- Autoformat
		-- config of conform.nvim
		require("plugins.autoformat"),

		-- Highlight todo, notes, etc in comments; convinient to add comments
		-- config of todo-commoent.nvim
		require("plugins.comment"),

		-- Collection of various small independent plugins/modules
		-- config of mini.nvim, setup mini.ai, mini.surround, mini.statusline
		require("plugins.mini"),

		-- Shows how to use the DAP plugin to debug your code.
		-- config of nvim-dap
		-- require("plugins.debug"),

		-- Add indentation guides even on blank lines
		-- config of indent-blankline.nvim
		require("plugins.indent_line"),

		-- 根据文件类型, 静态分析代码
		-- config of nvim-lint
		require("plugins.lint"),

		-- auto pairs for parentheses '{', '[', '(', '"', "'"
		-- config of nvim-autopairs
		require("plugins.autopairs"),

		require("plugins.copilot"),
		require("plugins.copilot-cmp"),

		require("plugins.vim-smoothie"),

		require("plugins.barbecue"),

		-- require("plugins.alpha-nvim"),

		require("plugins.illuminate"),

		require("plugins.utils"),

		require("plugins.null-ls"),

		require("plugins.multicursor"),

		-- add own plugins to `lua/custom/plugins/*.lua` to get going.
		--    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
		-- { import = "custom.plugins" },
	},
	-- NOTE: Lazy Options
	{
		ui = {
			-- If you are using a Nerd Font: set icons to an empty table which will use the
			-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
			icons = vim.g.have_nerd_font and {} or {
				cmd = "⌘",
				config = "🛠",
				event = "📅",
				ft = "📂",
				init = "⚙",
				keys = "🗝",
				plugin = "🔌",
				runtime = "💻",
				require = "🌙",
				source = "📄",
				start = "🚀",
				task = "📌",
				lazy = "💤 ",
			},
		},
	}
)

-- The line beneath this is called `modeline`. See `:help modeline`
-- 在注释中就可以设置, ts:标签宽度2个空格, sts: tab 2个空格, sw: 换行缩进两个空格, et: 空格代表制表符
-- vim: ts=2 sts=2 sw=2 et
