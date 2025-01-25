-- NOTE: spell check
-- splunker
return {
	"kamykn/spelunker.vim",
	event = "VeryLazy",
	config = function()
		vim.g.spelunker_check_type = 2
	end,
}
