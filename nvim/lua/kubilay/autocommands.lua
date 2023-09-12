-- Highlight Yanked Text
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

autocmd("TextYankPost", {
    group = yank_group,
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 80,
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

-- tmux nvim-tree cwd https://github.com/neovim/neovim/issues/21771
--vim.cmd [[ autocmd DirChanged * call chansend(v:stderr, printf("\033]7;%s\033", v:event.cwd)) ]]
autocmd("DirChanged", {
    pattern = "*",
    callback = function()
        vim.cmd [[ call chansend(v:stderr, printf("\033]7;%s\033", v:event.cwd)) ]]
    end
})