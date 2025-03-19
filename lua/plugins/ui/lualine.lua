-- NOTE: bottom status line
-- lualine: bottom status line
-- copilot-lualine: display copilot status
return {
  "nvim-lualine/lualine.nvim", -- 状态栏
  dependencies = {
    "AndreM222/copilot-lualine",
  },
  opts = {
    options = {
      icons_enabled = true,
      theme = "auto",
      -- theme = 'tokyonight',
      -- theme = 'gruvbox',
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      -- 自定义组建之间的分割符，此处为箭头
      -- component_separators = { left = "", right = "" },
      -- section_separators = { left = "", right = "" },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      always_show_tabline = true,
      globalstatus = false,
      refresh = {
        statusline = 100,
        tabline = 100,
        winbar = 100,
      },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = { "filename" },
      lualine_x = {
        {
          "copilot",
          -- Default values
          symbols = {
            status = {
              icons = {
                enabled = " ",
                sleep = " ", -- auto-trigger disabled
                disabled = " ",
                warning = " ",
                unknown = " ",
              },
              hl = {
                enabled = "#50FA7B",
                sleep = "#AEB7D0",
                disabled = "#6272A4",
                warning = "#FFB86C",
                unknown = "#FF5555",
              },
            },
            spinners = "dots", -- has some premade spinners
            spinner_color = "#6272A4",
          },
          show_colors = true,
          show_loading = true,
        },
        "encoding",
        "fileformat",
        "filetype",
      },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
  },
}
