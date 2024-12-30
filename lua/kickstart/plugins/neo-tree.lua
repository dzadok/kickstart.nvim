-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
<<<<<<< HEAD
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal' },
||||||| 5aeddfd
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
=======
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
>>>>>>> 9f9cc4cee27a6729f75102b935e805cf9c83d0ff
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
