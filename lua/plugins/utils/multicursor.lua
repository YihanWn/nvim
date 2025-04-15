-- NOTE: multi cursor plugin
-- visual-multi plugins
-- see :help visual-multi-maps for more mappings

return {
  "mg979/vim-visual-multi",
  init = function()
    vim.g.VM_maps = {
      ["Find Under"] = "<C-n>",
      ["Add Cursor Down"] = "<C-A-j>",
      ["Add Cursor Up"] = "<C-A-k>",
    }
  end,
}
