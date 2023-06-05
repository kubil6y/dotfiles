local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fa", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

local actions = require("telescope.actions")
require("telescope").setup({
	defaults = {
		prompt_prefix = " ",
		selection_caret = " ",
		path_display = { "smart" },
		file_ignore_patterns = {},

		mappings = {
			i = {
				["<C-u>"] = false, -- clears input
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
			},
			n = {
				["x"] = "delete_buffer",
			},
		},
	},
})
