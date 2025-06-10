-- NOTE: Format Code
-- conform: Automatically formats code by integrating with external formatters
-- null-ls: Use external tools (like linters, formatters, etc.) through the LSP framework for code processing

return { -- Autoformat
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({ async = true, lsp_format = "fallback" })
        end,
        mode = "",
        desc = "[F]ormat buffer",
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = false,
      -- format_on_save = function(bufnr)
      --   -- Disable "format_on_save lsp_fallback" for languages that don't
      --   -- have a well standardized coding style. You can add additional
      --   -- languages here or re-enable it for the disabled ones.
      --   local disable_filetypes = { c = true, cpp = true }
      --   local lsp_format_opt
      --   if disable_filetypes[vim.bo[bufnr].filetype] then
      --     lsp_format_opt = "never"
      --   else
      --     lsp_format_opt = "fallback"
      --   end
      --   return {
      --     timeout_ms = 500,
      --     lsp_format = lsp_format_opt,
      --   }
      -- end,

      formatters_by_ft = {
        c = { "clang-format" },
        lua = { "stylua" },
        -- Conform can also run multiple formatters sequentially
        python = { "isort", "black" },

        -- You can use 'stop_after_first' to run the first available formatter from the list
        -- javascript = { "prettierd", "prettier", stop_after_first = true },
      },
    },
  },
  -- {
  --   "jose-elias-alvarez/null-ls.nvim",
  --   event = { "BufReadPost", "BufNewFile" },
  --   dependencies = {
  --     "jay-babu/mason-null-ls.nvim",
  --   },
  --   config = function()
  --     -- 告诉 mason 安装那些 lint, formater 工具
  --     local tools = {
  --       "clang-format", -- C/C++ formatter
  --       "black", -- Python formatter
  --       "stylua", -- lua formatter
  --     }
  --
  --     require("mason-null-ls").setup({
  --       ensure_installed = tools,
  --       handlers = {},
  --     })
  --
  --     require("null-ls").setup({
  --       sources = {},
  --     })
  --   end,
  -- },
}
