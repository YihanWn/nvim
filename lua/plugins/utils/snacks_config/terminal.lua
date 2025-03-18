-- terminal 配置
-- snacks 内置了 edgy 插件来管理窗口，通过设置 style 来显示窗口类型
-- https://github.com/folke/snacks.nvim/blob/main/docs/terminal.md 提前预设了 terminal style，通过 style = "terminal" 即可使用
-- snacks 通过 win 参数来设置显示窗口类型 snacks 内置的 lazygit 同理，也有为 lazygit 预设 style
---@class snacks.terminal.Config
---@field win? snacks.win.Config|{}
---@field shell? string|string[] The shell to use. Defaults to `vim.o.shell`
---@field override? fun(cmd?: string|string[], opts?: snacks.terminal.Opts) Use this to use a different terminal implementation
return {
  win = {
    style = {
      position = "float",
      backdrop = 60,
      height = 0.9,
      width = 0.9,
      zindex = 50,
    },
  },
}
