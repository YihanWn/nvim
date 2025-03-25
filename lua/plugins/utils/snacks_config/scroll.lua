---@class snacks.scroll.Config
---@field animate snacks.animate.Config|{}
---@field animate_repeat snacks.animate.Config|{}|{delay:number}

if vim.g.neovide then
  -- neovide 有光标动画，滚动的时候不会跟丢，可以关闭动画
  return {
    enabled = false,
  }
elseif true then
  -- 开启动画，逐行移动，不会跟丢光标
  return {
    animate = {
      duration = { step = 15, total = 250 },
      easing = "linear",
    },
    animate_repeat = {
      delay = 100,
      duration = { step = 5, total = 50 },
      easing = "linear",
    },
    filter = function(buf)
      return vim.g.snacks_scroll ~= false and vim.b[buf].snacks_scroll ~= false and vim.bo[buf].buftype ~= "terminal"
    end,
  }
end
