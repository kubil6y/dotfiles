local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>fa", builtin.find_files, {})
vim.keymap.set("n", "<leader>af", builtin.buffers, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
vim.keymap.set("n", "<C-F>", builtin.lsp_document_symbols, {})

local actions = require("telescope.actions")
require("telescope").setup({
	defaults = {
		prompt_prefix = "  ",
		selection_caret = " ",
		path_display = { "smart" },
		file_ignore_patterns = {},

        --layout_config = {
            --horizontal = {
                --prompt_position = "bottom",
                --preview_width = 0.55,
                --results_width = 0.8,
            --},
            --vertical = {
                --mirror = false,
            --},
            --width = 0.88,
            --height = 0.80,
            --preview_cutoff = 120,
        --},

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
