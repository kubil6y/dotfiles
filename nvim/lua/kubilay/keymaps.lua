-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

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

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- select all file
keymap("n", "<leader>va", "ggVG", opts)

-- tailwind sorter
keymap("n", "<leader>tw", ":TailwindSort<CR>", opts)

-- Navigate buffers
-- Keyboard Shortcuts Switch windows of an application = Disabled (Ubuntu 20.04)
keymap("n", "<A-`>", ":b#<CR>", opts)

-- MISC
--
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)      -- remove highlights
keymap("n", "<leader>ut", ":UndotreeToggle<CR>", opts) -- remove highlights
keymap("n", "q", "<nop>", opts)                        -- remove q for disabling recording macros
keymap("n", "Q", "<nop>", opts)                        -- remove Q

-- Gitsigns
-- keymap("n", "]h", ":Gitsigns next_hunk<CR>", opts)
-- keymap("n", "[h", ":Gitsigns prev_hunk<CR>", opts)

-- Stay in indent mode in `visual_mode`
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Remove empty lines in `visual_mode`
keymap("v", "<leader>el", ":g/^\\s*$/d<CR>:nohl<CR>", opts)

-- Format document
keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<cr>", opts)

-- Clipboard stuff
keymap("v", "<leader>y", '"+y', opts)
keymap("n", "<leader>y", '"+y', opts)
keymap("n", "<leader>ay", 'gg"+yG', opts) -- copy whole file to clipboard

-- Greatest remap ever
keymap("x", "<leader>p", '"_dP')
keymap("v", "<leader>p", '"_dP')
-- Delete without copying to clipboard (void register)
keymap("x", "<leader>d", '"_d')
keymap("v", "<leader>d", '"_d')

-- Comment like vscode
--keymap("n", "<C-_>", ":call nerdcommenter#Comment('n', 'toggle')<CR>", { silent = true })
--keymap("v", "<C-_>", ":call nerdcommenter#Comment('x', 'toggle')<CR>", { silent = true })
keymap("n", "<C-_>", ":norm gcc<CR>")
keymap("v", "<C-_>", "gc", { remap = true })

-- Vim figutive
keymap("n", "gh", "<cmd>diffget //2<CR>")
keymap("n", "gl", "<cmd>diffget //3<CR>")

-- For easy formatting with prismaFmt
keymap("n", "<leader>wn", ":set sw=2<CR>") -- width narrow
keymap("n", "<leader>wl", ":set sw=4<CR>") -- width large

-- NvimTree
keymap("n", "\\", ":NvimTreeToggle<cr>", opts)

-- keymap("n", "<C-u>", "10k", opts)
-- keymap("n", "<C-d>", "10j", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
