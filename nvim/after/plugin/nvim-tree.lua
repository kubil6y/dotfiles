local status_ok, nvim_tree = pcall(require, "nvim-tree")

if not status_ok then
    return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
    return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup({
    filters = {
        custom = { "^node_modules$", "^obj$", "^.git$", "^.vscode$" },
        dotfiles = false,
    },
    actions = {
        change_dir = {
            enable = true,
            global = true
        }
    },
    update_focused_file = {
        enable = true,
    },
    notify = {
        threshold = vim.log.levels.ERROR,
    },
    renderer = {
        root_folder_modifier = ":t",
        icons = {
            show = {
                git = false, -- TODO
            },
            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    arrow_open = "",
                    arrow_closed = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
                git = {
                    unstaged = "",
                    staged = "S",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "U",
                    deleted = "",
                    ignored = "◌",
                },
            },
        },
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    view = {
        side = "left",
        mappings = {
            list = {
                { key = "<C-c>", action = "cd" },
                { key = "u",     action = "dir_up" },
            },
        },
    },
})
