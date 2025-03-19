-- NOTE: move message to top
-- noice
-- cmdline
-- lsp status 右下角lsp进度显示会将光标移动到右下角，这里将其关闭，使用 snacks notifier 工具 + autocmd 显示 LSP 进度
return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
    lsp = {
      progress = {
        enabled = false, -- 关闭 LSP 进度显示
      },
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
      },
    },
    -- you can enable a preset for easier configuration
    presets = {
      bottom_search = true, -- use a classic bottom cmdline for search
      command_palette = true, -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = false, -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = false, -- add a border to hover docs and signature help
    },
    routes = {
      filter = {
        event = "msg_show",
        kind = "",
        find = "written",
      },
      opts = { skip = true },
    },
    views = {
      mini = { enter = true },
    },
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper module="..." entries
    "MunifTanjim/nui.nvim",
    {
      -- OPTIONAL:
      --   nvim-notify is only needed, if you want to use the notification view.
      --   If not available, we use mini as the fallback
      "rcarriga/nvim-notify",
      opts = {
        background_colour = "#1e1e2e", -- 设置背景颜色为深灰色
      },
      config = function(_, opts)
        require("notify").setup(opts)
      end,
    },
  },
}
