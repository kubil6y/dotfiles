local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Search git files" })
vim.keymap.set("n", "<leader>o", builtin.lsp_document_symbols, { desc = "[S]earch [S]elect Telescope" })
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>st", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

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
