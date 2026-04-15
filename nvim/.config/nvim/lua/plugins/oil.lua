return {
  'stevearc/oil.nvim',
  dependencies = { { 'echasnovski/mini.icons', opts = {} }, 'nvim-tree/nvim-web-devicons' },
  opts = {},
  keys = {
    { '-', mode = { 'n' }, '<CMD>Oil<CR>', desc = 'Open parent dir' },
  },
}
