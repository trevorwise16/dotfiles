-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'stevearc/oil.nvim',
  dependencies = { { 'echasnovski/mini.icons', opts = {} }, 'nvim-tree/nvim-web-devicons' },
  opts = {},
  keys = {
    { '-', mode = { 'n' }, '<CMD>Oil<CR>', desc = 'Open parent dir' },
  },
}
