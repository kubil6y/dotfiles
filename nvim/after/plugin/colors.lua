require("rose-pine").setup({
    dark_variant = "main",
    disable_background = true,
    disable_float_background = true,
    disable_italics = true,
    highlight_groups = {
        LineNr = { fg = "#5c5877" },
        Comment = { fg = "#5c5877" },
        WinSeparator = { fg = "#5c5877" },
        TreesitterContext = { bg = "#26233a" },
        TreesitterContextLineNumber = { bg = "#26233a", fg = "#5c5877" },
        ["@comment.todo"] = { fg = "text", bg = "NONE", bold = true },
        ["@comment.note"] = { fg = "text", bg = "NONE", bold = true },
        ["@comment.error"] = { fg = "love", bg = "NONE", bold = true },
        ["@comment.warning"] = { fg = "gold", bg = "NONE", bold = true },
        -- NvimTreeFolderIcon = { fg = "gold" },

        -- Pmenu = { fg = "#908caa", bg = "#1f1d2e" },
        -- PmenuSel = { fg = "text", bg = "#26233a" },

        -- Pmenu = { fg = "subtle", bg = "surface" },
        Pmenu = { fg = "subtle", bg = "#26233a" },
        PmenuSel = { fg = "text", bg = "#34304f" },
    },
})

require("vscode").setup({
    transparent = true,
    italic_comments = false,
    underline_links = true,
    disable_nvimtree_bg = true,
    color_overrides = {},
    group_overrides = {
        TreesitterContext = { bg = "#303039" },
        NormalFloat = { bg = "" },
        LineNr = { fg = "#404040" },
        MatchParen = { bg = "#3c3850", fg = "#d4d4d4" },
        TelescopeNormal = { fg = "#808080" },
        TelescopePromptNormal = { fg = "#d4d4d4" },
        TelescopeMatching = { fg = "#2aaaff", bold = false },
        TelescopeSelection = { bg = "#04395e", fg = "#d4d4d4", bold = true },
        ["@comment.todo"] = { fg = "#cccccc", bg = "NONE", bold = true },
        ["@comment.note"] = { fg = "#cccccc", bg = "NONE", bold = true },
        ["@comment.error"] = { fg = "#f85149", bg = "NONE", bold = true },
        ["@comment.warning"] = { fg = "#cca700", bg = "NONE", bold = true },
        PmenuSel = { bg = "#04395e", fg = "#d4d4d4" },
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
        vim.cmd([[ hi LineNr guifg=#41454a ]])
        vim.cmd([[ hi CursorLine guibg=#2b2b2b ]])
        vim.cmd([[ hi TreesitterContext guibg=#2b2b2b ]])
        vim.cmd([[ hi TreesitterContextLineNumber guibg=#2b2b2b guifg=#41454a ]])
        vim.cmd([[ hi Visual guibg=#333951 ]])
        vim.cmd([[ hi TelescopeSelection guifg=#e0e0e0 guibg=#333951 gui=bold ]])
        vim.cmd([[ hi TelescopeMatching guifg=#e89155 gui=NONE ]])
        vim.cmd([[ hi TelescopeNormal guifg=#b0b1b0 ]])
        vim.cmd([[ hi @comment.todo guifg=#e0e0e0 gui=bold ]])
        vim.cmd([[ hi @comment.note guifg=#e0e0e0 gui=bold ]])
        vim.cmd([[ hi @comment.error guifg=#cc6666 gui=bold ]])
        vim.cmd([[ hi @comment.warning guifg=#de935f gui=bold ]])
        vim.cmd([[ hi Search guifg=#e0e0e0 guibg=#49475c blend=20 ]])
        vim.cmd([[ hi MatchParen gui=bold guifg=#8abeb7 ]]) --cc6666,8abeb7
    end

    if color == "github_dark_default" then
        vim.cmd([[ hi Comment guifg=#5b636c gui=NONE ]])
        vim.cmd([[ hi LineNr guifg=#5b636c gui=NONE ]])
        vim.cmd([[ hi CmpItemMenu gui=none ]])
        vim.cmd([[ hi CmpItemAbbrMatch guifg=NONE ]])
        vim.cmd([[ hi MatchParen gui=bold guifg=#ff9445 guibg=none ]])
        vim.cmd([[ hi Pmenu guibg=#262a32 ]])
        vim.cmd([[ hi PmenuSel guibg=#ff9445 guifg=#0d1117 ]])
        vim.cmd([[ hi PmenuThumb guibg=#33363c ]])
        vim.cmd([[ hi PmenuSbar guibg=#1c1f25 ]])
        vim.cmd([[ hi TreesitterContext guibg=#1c2433 ]])
        vim.cmd([[ hi TreesitterContextLineNumber guibg=#1c2433 guifg=#6e7681 ]])
        vim.cmd([[ hi NvimTreeCursorLine guibg=#283344 ]])
        vim.cmd([[ hi FloatBorder guifg=#2b2b2b ]])
        vim.cmd([[ hi @constant.builtin gui=bold guifg=#79c0ff ]])
        vim.cmd([[ hi WinSeparator guifg=#33363c ]])
        vim.cmd([[ hi TelescopePromptNormal guifg=#e6edf3 ]])
        vim.cmd([[ hi TelescopeNormal guifg=#6e7883 ]])
        vim.cmd([[ hi TelescopeSelection guibg=#283344 guifg=#e6edf3 gui=bold ]])
        vim.cmd([[ hi TelescopeSelectionCaret guibg=#283344 ]])
        vim.cmd([[ hi TelescopeMatching guibg=none guifg=#ffa657 ]])
        vim.cmd([[ hi @comment.todo guifg=#e6edf3 guibg=NONE gui=bold ]])
        vim.cmd([[ hi @comment.note guifg=#e6edf3 guibg=NONE gui=bold ]])
        vim.cmd([[ hi @comment.error guifg=#cc6666 guibg=NONE gui=bold ]])
        vim.cmd([[ hi @comment.warning guifg=#de935f guibg=NONE gui=bold ]])
    end

    if color == "ayu_dark" then
        vim.cmd([[ hi DiagnosticVirtualTextError guifg=#F07178]])
        vim.cmd([[ hi DiagnosticVirtualTextWarn  guifg=#E6B673]])
        vim.cmd([[ hi DiagnosticVirtualTextInfo  guifg=#5CCFE6]])
        vim.cmd([[ hi DiagnosticVirtualTextHint  guifg=#A1EFD3]])
        vim.cmd([[ hi DiagnosticUnderlineError gui=underline guisp=#F07178 ]])
        vim.cmd([[ hi DiagnosticUnderlineWarn  gui=underline guisp=#E6B673 ]])
        vim.cmd([[ hi DiagnosticUnderlineInfo  gui=underline guisp=#5CCFE6 ]])
        vim.cmd([[ hi DiagnosticUnderlineHint  gui=underline guisp=#A1EFD3 ]])
        vim.cmd([[ hi @comment.todo guifg=#56c3f9 guibg=NONE ]])
        vim.cmd([[ hi @comment.note guifg=#56c3f9 guibg=NONE ]])
        vim.cmd([[ hi @comment.error guifg=#F07178 guibg=NONE ]])
        vim.cmd([[ hi @comment.warning guifg=#aad84c guibg=NONE ]])
        vim.cmd([[ hi CmpItemAbbrMatch guifg=NONE ]])
        vim.cmd([[ hi CmpItemAbbrMatchFuzzy guifg=NONE ]])
        vim.cmd([[ hi NvimTreeOpenedFolderName gui=NONE guifg=#36a3d9 ]])
        vim.cmd([[ hi NvimTreeEmptyFolderName gui=NONE guifg=#36a3d9 ]])
        vim.cmd([[ hi TelescopeNormal guifg=#808080 ]])
        vim.cmd([[ hi TelescopeSelection guibg=#282b37 guifg=#ced4df gui=bold ]])
        vim.cmd([[ hi TelescopePromptNormal guifg=#c9c7be ]])
        vim.cmd([[ hi Pmenu guibg=#253340 ]])
        vim.cmd([[ hi PmenuSbar guibg=#253340 ]])
        vim.cmd([[ hi PmenuThumb guibg=#808080 ]])
        vim.cmd([[ hi TreesitterContext guibg=#1c2433 ]])
        vim.cmd([[ hi TreesitterContextLineNumber guibg=#282b37 guifg=#40444b ]])
        vim.cmd([[ hi Visual guibg=#393748 ]])
        vim.cmd([[ hi WinSeparator guifg=#33363c ]])
        vim.cmd([[ hi Comment guifg=#474552 ]])
        vim.cmd([[ hi LineNr guifg=#474552 ]])
        -- vim.cmd([[ hi @function guifg=#FFD173 ]])
    end
end

set_colors()
