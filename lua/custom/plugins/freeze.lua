return {
  'charm-community/freeze.nvim',
  keys = {
    {
      '<leader>gf',
      '<cmd>Freeze<cr>',
      desc = 'Freeze',
    },
    {
      '<leader>gf',
      '<cmd>Freeze<cr>',
      desc = 'Freeze',
      mode = 'v',
    },
  },
  config = function()
    require('freeze').setup {
      command = 'freeze',
      output = function()
        return './' .. os.date '%Y-%m-%d' .. '_freeze.png'
      end,
      theme = 'catppuccin-mocha',
    }
  end,
}
