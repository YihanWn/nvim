-- NOTE: move message to top
-- noice
-- cmdline
-- lsp status 右下角lsp进度显示会将光标移动到右下角，这里将其关闭，使用 snacks notifier 工具 + autocmd 显示 LSP 进度
return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    lsp = {
      -- progress = { enabled = false }, -- 关闭 LSP 进度显示
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    routes = {
      {
        filter = {
          event = "msg_show",
          any = {
            { find = "%d+L, %d+B" },
            { find = "; after #%d+" },
            { find = "; before #%d+" },
          },
        },
        view = "mini",
      },
    },
    presets = {
      bottom_search = true,
      command_palette = true,
      long_message_to_split = true,
      -- inc_rename = false, -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = false, -- add a border to hover docs and signature help
    },
  },
}
