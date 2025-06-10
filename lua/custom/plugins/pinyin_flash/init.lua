return {
  {
    -- 指向本地插件根目录
    dir = vim.fn.stdpath("config") .. "/lua/custom/plugins/pinyin_flash",
    -- 惰性加载时机，根据需要改成 BufRead、VeryLazy、Cmd 等
    event = "VeryLazy",
    -- 加载后调用你的核心模块
    config = function()
      require("pinyin_flash").setup()
    end,
  },
}
