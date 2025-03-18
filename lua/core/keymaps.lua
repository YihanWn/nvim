-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- 使用<cmd>代替:来执行命令默认为silent

-- NOTE: normal model keymaps

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- bufferline plugins keymaps
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", { silent = true, desc = "Move focus to the previous buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { silent = true, desc = "Move focus to the next buffer" })

vim.keymap.set("n", "<S-J>", "<C-d>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-K>", "<C-u>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { silent = true, desc = "Save File" })
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { silent = true, desc = "Quit File" })
-- vim.keymap.set("n", "<leader>wq", "<cmd>wq<CR>", { silent = true, desc = "Save and Quit File" })

-- Neotree plugins keymaps
-- vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true, desc = "Toggle neotree" })

vim.api.nvim_set_keymap("n", "<C-S-h>", "<C-w>H", { noremap = true, silent = true }) -- 移动到左侧窗口
vim.api.nvim_set_keymap("n", "<C-S-j>", "<C-w>J", { noremap = true, silent = true }) -- 移动到下侧窗口
vim.api.nvim_set_keymap("n", "<C-S-k>", "<C-w>K", { noremap = true, silent = true }) -- 移动到上侧窗口
vim.api.nvim_set_keymap("n", "<C-S-l>", "<C-w>L", { noremap = true, silent = true }) -- 移动到右侧窗口

vim.api.nvim_set_keymap(
  "n",
  "<leader>sv",
  "<cmd>vsplit<CR>",
  { noremap = true, silent = true, desc = "Vertical split window" }
) -- 向右分割
vim.api.nvim_set_keymap(
  "n",
  "<leader>sh",
  "<cmd>split<CR>",
  { noremap = true, silent = true, desc = "Horizontal split window" }
) -- 向下分割

vim.keymap.set("n", "<C-S-Right>", "<C-w><", { noremap = true, silent = true, desc = "Decrease width" })
vim.keymap.set("n", "<C-S-left>", "<C-w>>", { noremap = true, silent = true, desc = "Increase width" })
vim.keymap.set("n", "<C-S-Up>", "<C-w>+", { noremap = true, silent = true, desc = "Increase height" })
vim.keymap.set("n", "<C-S-Down>", "<C-w>-", { noremap = true, silent = true, desc = "Decrease height" })

-- NOTE: insert mode keymaps
vim.keymap.set("i", "jk", "<ESC>", { desc = "insert -> normal mode" })

-- NOTE: visual mode keymaps

-- Move selected line / block of text in visual mode, 注 <cmd>代替:会出问题
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move selected line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move selected line up" })

-- 没有开启共享剪贴板时,可以使用下面的映射,将选中的内容复制到系统剪贴板
-- vim.keymap.set(
-- 	{ "v", "n" },
-- 	"<leader>y",
-- 	"\"+y",
-- 	{ noremap = true, silent = true, desc = "Copy selected text to clipboard" }
-- )

-- NOTE: terminal mode keymaps

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
