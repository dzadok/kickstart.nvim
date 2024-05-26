return {
  'lewis6991/hover.nvim',
  -- lazy = true,
  -- keys = { { 'K', require('hover').hover, mode = { 'n' }, { desc = 'Hover' } } },
  config = function()
    local hover = require 'hover'
    hover.setup {
      init = function()
        require 'hover.providers.lsp'
        require 'hover.providers.gh'
        require 'hover.providers.man'
        require 'hover.providers.dictionary'
      end,
      title = false,
    }
    vim.keymap.set('n', 'K', require('hover').hover)
    vim.keymap.set('n', 'gK', require('hover').hover_select)
  end,
}
