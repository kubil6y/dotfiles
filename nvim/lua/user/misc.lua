-- Gitsigns
vim.cmd([[ highlight GitSignsAdd    guifg=#6a9955 guibg=NONE ]])
vim.cmd([[ highlight GitSignsChange guifg=#569cd6 guibg=NONE ]])
vim.cmd([[ highlight GitSignsDelete guifg=red guibg=NONE ]])
require('gitsigns').setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
}

-- Setup neovim lua configuration
require('neodev').setup()

-- Turn on lsp status information
require('fidget').setup()

-- TODO autotag
require('nvim-ts-autotag').setup()
