require("rose-pine").setup({
    disable_background = true,
    disable_float_background = true,
    disable_italics = true,
    highlight_groups = {
        TelescopeMatching = { fg = "text", bold = true },
        ["@type.qualifier"] = { fg = "#31748f" },
    },
})

require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = false,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = true,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "hard", -- can be "hard", "soft" or empty string
    palette_overrides = {
        bright_blue = "#779c8e",
    },
    overrides = {
        SignColumn = { bg = "NONE" },
        GruvboxRedSign = { bg = "NONE" },
        GruvboxYellowSign = { bg = "NONE" },
        GruvboxBlueSign = { bg = "NONE" },
        GruvboxAquaSign = { bg = "NONE" },
        DiagnosticFloatingError = { fg = "#ff7070" },
            ["@type.qualifier"] = { fg = "#fb4934" },
    },
    dim_inactive = false,
    transparent_mode = true,
})

function _G.set_colors(color)
    color = color or "rose-pine"
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.cmd.colorscheme(color)
end

set_colors()
