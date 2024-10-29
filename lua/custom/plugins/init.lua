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
    'ggandor/leap.nvim',
  },
  {
    'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
    config = function()
      require('lsp_lines').setup()
      -- highlight_whole_line = false,
      -- begin without it, use <Leader>d to turn it on.
      vim.diagnostic.config { virtual_text = true, virtual_lines = false }
      vim.keymap.set('', '<Leader>d', function()
        if vim.diagnostic.config().virtual_text then
          -- vim.diagnostic.config({ virtual_text = false, virtual_lines = { only_current_line = true } })
          vim.diagnostic.config { virtual_text = false, virtual_lines = true }
        else
          vim.diagnostic.config { virtual_text = true, virtual_lines = false }
        end
      end, { desc = 'Toggle lsp_lines' })
    end,
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && yarn install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
  },
  {
    'iden3/vim-circom-syntax',
  },
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = 'zathura'
    end,
  },
  {
    'noir-lang/noir-nvim',
  },
}
