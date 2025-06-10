-- NOTE: move faster, enforce f, s, S, r, R, <c-s>
-- flash
return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {
    modes = {
      -- “char” 模式是 flash.nvim 默认把 s、S、f、t、F、T 等都映射进去的地方
      -- 这里面加一个 disable_patterns，让它在 operator-pending 时，不去把 s/S 做成“跳转”。
      char = {
        enabled = true, -- 正常的字符跳转功能保留
        search = false, -- 禁用 operator-pending + s 的跳转
        jump_labels = false, -- 也关掉 label 标记
        highlight = { label = "@flashLabel" },
        label = { after = { 0, 0 } },
        multi_line = false,
      },
    },
  },
  --stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
