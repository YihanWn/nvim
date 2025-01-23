-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  -- Optional dependency
  dependencies = { 'hrsh7th/nvim-cmp' },
  config = function()
    require('nvim-autopairs').setup {
      -- check_ts = true,
      -- ts_config = {
      --   lua = { "string", "source" },
      --   javascript = { "string", "tempplate_string" },
      -- },
      -- fast_wrap = {
      --   map = '<M-e>',
      --   chars = { '{', '[', '(', '"', "'" },
      --   pattern = [=[[%'%"%)%>%]%)%}%,]]=],
      --   end_key = '$',
      --   keys = 'qwertyuiopzxcvbnmasdfghjkl',
      --   check_comma = true,
      --   hightlight = 'Search',
      --   hightlight_grey = 'Comment'
      -- },
    }
    -- If you want to automatically add `(` after selecting a function or method
    local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
    local cmp = require 'cmp'
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
  end,
}
