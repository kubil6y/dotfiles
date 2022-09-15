vim.g.Illuminate_ftblacklist = { 'alpha', 'NvimTree' }
vim.keymap.set('n', '<a-n>', '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', { noremap = true })
vim.keymap.set('n', '<a-p>', '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', { noremap = true })
