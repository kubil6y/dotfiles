--Remap space as leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

--[[
-- MODES
  normal_mode = "n",
  insert_mode = "i",
  visual_mode = "v",
  visual_block_mode = "x",
  term_mode = "t",
  command_mode = "c",
]]

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- select all
keymap("n", "<leader>va", "ggVG", opts)

-- Navigate buffers
-- Keyboard Shortcuts Switch windows of an application = Disabled (Ubuntu 20.04)
keymap("n", "<A-`>", ":b#<CR>", opts)

-- MISC
keymap("n", "<leader>ds", ":nohl<CR>", opts) -- remove highlights
keymap("n", "<leader>ut", ":UndotreeToggle<CR>", opts) -- remove highlights
keymap("n", "q", "<nop>", opts) -- remove q for disabling recording macros
keymap("n", "Q", "<nop>", opts) -- remove Q

-- Gitsigns
keymap("n", "]h", ":Gitsigns next_hunk<CR>", opts)
keymap("n", "[h", ":Gitsigns prev_hunk<CR>", opts)

-- Stay in indent mode in `visual_mode`
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- remove empty lines in `visual_mode`
keymap("v", "<leader>el", ":g/^$/d<CR>:nohl<CR>", opts)

-- format document
keymap("n", "<leader>df", "<cmd>lua vim.lsp.buf.formatting()<cr>", opts)

-- Clipboard stuff
keymap("v", "<leader>y", '"+y', opts)
keymap("n", "<leader>y", '"+y', opts)
keymap("n", "<leader>ay", 'gg"+yG', opts) -- copy whole file to clipboard

-- greatest remap ever
keymap("x", "<leader>p", "\"_dP")
keymap("v", "<leader>p", "\"_dP")
-- delete without copying to clipboard (void register)
keymap("x", "<leader>d", "\"_d")
keymap("v", "<leader>d", "\"_d")

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- find with preview
keymap("n", "<leader>lg", "<cmd>Telescope live_grep<cr>", opts) -- live grep

-- quick find files (minimal)
keymap(
	"n",
	"<C-p>",
	"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
	opts
)
-- quick find buffers (minimal)
keymap(
	"n",
	"<C-f>",
	"<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
	opts
)

keymap("n", "zz", "zt", opts)

-- NvimTree
keymap("n", "<leader>n", ":NvimTreeToggle<cr>", opts)

keymap("n", "<C-u>", "10k", opts)
keymap("n", "<C-d>", "10j", opts)
