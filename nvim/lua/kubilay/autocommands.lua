-- Highlight Yanked Text
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

-- https://github.com/nvim-telescope/telescope.nvim/issues/699
--autocmd({ "BufEnter" }, { pattern = { "*" }, command = "normal zx zR" })

autocmd("TextYankPost", {
    group = yank_group,
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 100,
        })
    end,
})

-- dunno what is this
--vim.cmd("autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif")

-- Fixes Autocomment
autocmd({ "BufWinEnter" }, {
    callback = function()
        vim.cmd("set formatoptions-=cro")
    end,
})

-- Terminal 'W' to 'w'
vim.cmd("command! -nargs=* W w") -- save with :W
vim.cmd("command! Wq wq")
vim.cmd("command! Wa wa")

-- .ejs files as html
vim.cmd([[ au BufNewFile,BufRead *.ejs set filetype=html ]])

-- tmux nvim-tree cwd https://github.com/neovim/neovim/issues/21771
--vim.cmd [[ autocmd DirChanged * call chansend(v:stderr, printf("\033]7;%s\033", v:event.cwd)) ]]
autocmd("DirChanged", {
    pattern = "*",
    callback = function()
        vim.cmd([[ call chansend(v:stderr, printf("\033]7;%s\033", v:event.cwd)) ]])
    end,
})

autocmd("FileType", {
    pattern = { "c", "cpp" },
    callback = function()
        vim.bo.commentstring = "// %s"
    end,
})

-- Save and restore folds automatically
vim.o.viewoptions = vim.o.viewoptions .. ',folds'
vim.api.nvim_create_autocmd('BufWinLeave', {
    pattern = '*',
    command = 'silent! mkview'
})

vim.api.nvim_create_autocmd('BufWinEnter', {
    pattern = '*',
    command = 'silent! loadview'
})
