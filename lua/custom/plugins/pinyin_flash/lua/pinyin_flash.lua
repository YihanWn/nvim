-- lua/pinyin-flash.lua
-- 这是你的主模块，export 一个 setup 方法

local M = {}

function M.setup()
  -- 普通模式下，<leader>sp 打印 “hello plugins”
  vim.keymap.set("n", "<leader>sp", function()
    print("hello plugins")
  end, { desc = "Pinyin Flash: Debug Print" })
end

return M
