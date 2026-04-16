require('copilot').setup {
  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 50,
    keymap = {
      accept = '<Tab>',
      accept_word = '<M-k>',
      accept_line = '<M-j>',
      next = '<M-]>',
      prev = '<M-[>',
      dismiss = '<C-]>',
    },
  },
  panel = { enabled = false },
}
