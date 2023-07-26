-- [[ Setting options ]]
-- See `:help vim.o`
local options = {
	guicursor = "",
    background = "dark",
	cmdheight = 1, -- more space in the neovim command line for displaying messages
	--completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	conceallevel = 0, -- so that `` is visible in markdown files
	fileencoding = "utf-8", -- the encoding written to a file
	hlsearch = true, -- highlight all matches on previous search pattern
	incsearch = true,
	ignorecase = true, -- ignore case in search patterns
	mouse = "a", -- allow the mouse to be used in neovim
	pumheight = 10, -- pop up menu height
	showmode = false, -- we don't need to see things like -- INSERT -- anymore
	-- showtabline = 2, -- always show tabs
	smartcase = true, -- smart case
	smartindent = true, -- make indenting smarter again
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window
	termguicolors = true, -- set term gui colors (most terminals support this)
	timeoutlen = 300, -- time to wait for a mapped sequence to complete (in milliseconds)

	undofile = true, -- enable persistent undo
	undodir = os.getenv("HOME") .. "/.vim/undodir",
	swapfile = false, -- creates a swapfile
	backup = false,

	updatetime = 50, -- faster completion (4000ms default)
	writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

	-- indent options
	expandtab = true, -- convert tabs to spaces
	shiftwidth = 4, -- the number of spaces inserted for each indentation
	tabstop = 4, -- insert 2 spaces for a tab
	softtabstop = 4,

	cursorline = false, -- highlight the current line
	number = true, -- set numbered lines
	relativenumber = true, -- set relative numbered lines
	numberwidth = 4, -- set number column width to 2 {default 4}
	signcolumn = "yes",
	scrolloff = 7, -- is one of my fav
	foldenable = false, -- disable folding at start
	foldnestmax = 4,
	foldmethod = "expr",
	foldexpr = "nvim_treesitter#foldexpr()",
}

-- Disable netrw
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_respect_buf_cwd = 1

-- fixes press enter issues with long messages (ex: nvim-tree)
-- for more information :h shortmess
vim.opt.shortmess:append("c")

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- TODO
vim.cmd("set clipboard+=unnamed") -- clipboard + nvim

-- Terminal 'W' to 'w'
vim.cmd("command! -nargs=* W w") -- save with :W
vim.cmd("command! Wq wq")
vim.cmd("command! Wa wa")
