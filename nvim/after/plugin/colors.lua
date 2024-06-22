require("rose-pine").setup({
    dark_variant = "moon",
    disable_background = true,
    disable_float_background = true,
    disable_italics = true,
    highlight_groups = {
        Comment = { italic = true },
        ["@comment.todo"] = { fg = "text", bg = "NONE", bold = true },
        ["@comment.note"] = { fg = "text", bg = "NONE", bold = true },
        ["@comment.error"] = { fg = "love", bg = "NONE", bold = true },
        ["@comment.warning"] = { fg = "gold", bg = "NONE", bold = true },
        --TelescopeNormal = { fg = "#635e80" },

        --TreesitterContext = { bg = "#26233a" },
        --NvimTreeCursorLine = { bg = "#26233a" },
        --QuickFixLine = { bg = "#26233a", fg = "text" },
        --qfLineNr = { fg = "text" },
        --PmenuSel = { bg = "#26233a" },
        --TelescopeSelection = { fg = "#e0def4", bg = "#26233a", bold = true },
        --TelescopeSelectionCaret = { fg = "#e0def4", bg = "#26233a" },
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
    inverse = true,
    contrast = "", -- can be "hard", "soft" or empty string
    dim_inactive = false,
    transparent_mode = true,
    palette_overrides = {},
    overrides = {
        ["@type.qualifier"] = { fg = "#fb4934" },
        ["@text.danger.comment"] = { fg = "#fb4934", bg = "NONE" },
        Todo = { fg = "#ebdbb2", bg = "NONE" },
        TreesitterContext = { bg = "#3c3836" },
        -- autocomplete
        --Pmenu = { bg = "" },
        --PmenuSel = { fg = "#ebdbb2", bg = "#504945", bold = false },
        --CmpItemAbbr = { fg = "#928374" },
        CmpItemAbbrMatch = { fg = "", bold = false },
        CmpItemAbbrMatchFuzzy = { fg = "", bold = false },
    },
})

function _G.set_colors(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)
    --vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "hl_inlay_hints", { fg = "#59566d" })

    if color == "gruvbuddy" then
        --vim.cmd([[ hi @function.method.call gui=bold guifg=#f8fe7a ]])
        --vim.cmd([[ hi @function.call gui=bold guifg=#f8fe7a ]])
        --vim.cmd([[ hi @function gui=bold guifg=#f8fe7a ]])

        vim.cmd([[ hi LineNr guifg=#41454a ]])
        vim.cmd([[ hi TelescopeSelection guifg=#e0e0e0 guibg=#333951 gui=bold ]])
        vim.cmd([[ hi TelescopeMatching guifg=#e89155 gui=NONE ]])
        vim.cmd([[ hi TelescopeNormal guifg=#b0b1b0 ]])
        vim.cmd([[ hi Visual guibg=#333951 ]])
        vim.cmd([[ hi @comment.todo guifg=#e0e0e0 gui=bold ]])
        vim.cmd([[ hi @comment.note guifg=#e0e0e0 gui=bold ]])
        vim.cmd([[ hi @comment.error guifg=#cc6666 gui=bold ]])
        vim.cmd([[ hi @comment.warning guifg=#de935f gui=bold ]])
    end
end

set_colors()
