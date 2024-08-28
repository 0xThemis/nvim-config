return {
  {
    'nvim-tree/nvim-tree.lua',
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        theme = 'solarized_light',
      },
    },
  },
  {
    'm4xshen/autoclose.nvim',
    lazy = false,
    opts = {
      keys = {
        ['('] = { escape = false, close = true, pair = '()' },
        ['['] = { escape = false, close = true, pair = '[]' },
        ['{'] = { escape = false, close = true, pair = '{}' },

        ['>'] = { escape = true, close = false, pair = '<>' },
        [')'] = { escape = true, close = false, pair = '()' },
        [']'] = { escape = true, close = false, pair = '[]' },
        ['}'] = { escape = true, close = false, pair = '{}' },

        ['"'] = { escape = true, close = true, pair = '""' },
        ["'"] = { escape = true, close = true, pair = "''" },
        ['`'] = { escape = true, close = true, pair = '``' },
      },
      options = {
        disabled_filetypes = { 'text' },
        disable_when_touch = false,
        touch_regex = '[%w(%[{]',
        pair_spaces = false,
        auto_indent = true,
        disable_command_mode = false,
      },
    },
  },
  {
    'akinsho/bufferline.nvim',
    version = 'v4.0.0',
    dependencies = 'nvim-tree/nvim-web-devicons',
    lazy = false,
  },
  {
    'ggandor/leap.nvim',
  },
}
