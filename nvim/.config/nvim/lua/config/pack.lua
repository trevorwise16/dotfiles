local gh = function(x) return 'https://github.com/' .. x end

vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if kind ~= 'install' and kind ~= 'update' then return end

    if name == 'telescope-fzf-native.nvim' then
      vim.system({ 'make' }, { cwd = ev.data.path })
    elseif name == 'LuaSnip' then
      vim.system({ 'make', 'install_jsregexp' }, { cwd = ev.data.path })
    end
  end,
})

vim.pack.add({
  gh 'ellisonleao/gruvbox.nvim',

  gh 'nvim-lua/plenary.nvim',
  gh 'nvim-tree/nvim-web-devicons',
  gh 'echasnovski/mini.icons',
  gh 'MunifTanjim/nui.nvim',
  gh 'folke/snacks.nvim',

  gh 'windwp/nvim-autopairs',
  gh 'folke/flash.nvim',
  gh 'NMAC427/guess-indent.nvim',
  gh 'lukas-reineke/indent-blankline.nvim',
  gh 'folke/todo-comments.nvim',
  gh 'folke/which-key.nvim',

  gh 'nvim-telescope/telescope.nvim',
  gh 'nvim-telescope/telescope-fzf-native.nvim',
  gh 'nvim-telescope/telescope-ui-select.nvim',
  gh 'stevearc/oil.nvim',
  gh 'nvim-neo-tree/neo-tree.nvim',
  gh 'christoomey/vim-tmux-navigator',

  gh 'neovim/nvim-lspconfig',
  gh 'mason-org/mason.nvim',
  gh 'mason-org/mason-lspconfig.nvim',
  gh 'WhoIsSethDaniel/mason-tool-installer.nvim',
  gh 'j-hui/fidget.nvim',
  { src = gh 'saghen/blink.cmp', version = vim.version.range('1.*') },
  gh 'L3MON4D3/LuaSnip',
  gh 'folke/lazydev.nvim',

  gh 'nvim-treesitter/nvim-treesitter',
  gh 'pmizio/typescript-tools.nvim',
  gh 'ray-x/go.nvim',
  gh 'ray-x/guihua.lua',

  gh 'stevearc/conform.nvim',
  gh 'mfussenegger/nvim-lint',

  gh 'lewis6991/gitsigns.nvim',

  gh 'zbirenbaum/copilot.lua',
  gh 'coder/claudecode.nvim',

  gh 'MeanderingProgrammer/render-markdown.nvim',
  gh 'echasnovski/mini.nvim',
})
