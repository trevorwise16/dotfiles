local ts = require 'nvim-treesitter'

ts.install({
  'bash', 'c', 'diff', 'html', 'lua', 'luadoc',
  'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc',
  'typescript', 'tsx', 'javascript', 'go', 'gomod',
}, { summary = false })

vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('treesitter-setup', { clear = true }),
  callback = function(ev)
    local lang = vim.treesitter.language.get_lang(ev.match)
    if not lang then return end

    if not pcall(vim.treesitter.language.add, lang) then
      ts.install({ lang }, { summary = false })
      return
    end

    if not pcall(vim.treesitter.start, ev.buf, lang) then return end

    vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
