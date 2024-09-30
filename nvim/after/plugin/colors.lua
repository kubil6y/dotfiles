require("rose-pine").setup({
    dark_variant = "moon",
    disable_background = true,
    disable_float_background = true,
    disable_italics = true,
    highlight_groups = {
        Comment = { italic = true },
        TreesitterContext = { bg = "#26233a" },
        TreesitterContextLineNumber = { bg = "#26233a", fg = "muted" },
        ["@comment.todo"] = { fg = "text", bg = "NONE", bold = true },
        ["@comment.note"] = { fg = "text", bg = "NONE", bold = true },
        ["@comment.error"] = { fg = "love", bg = "NONE", bold = true },
        ["@comment.warning"] = { fg = "gold", bg = "NONE", bold = true },
        Pmenu = { fg = "subtle", bg = "surface" },
        PmenuSel = { fg = "text", bg = "overlay" },
        CurSearch = { fg = "base", bg = "leaf", inherit = false },
        Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },
    },
})

require("ayu").setup({
    overrides = {
        Normal = { bg = "" },
        MatchParen = { fg = "#dfbfff", bold = true },
        CmpItemAbbrMatch = { bg = "", fg = "" },
        CmpItemAbbrMatchFuzzy = { bg = "", fg = "" },
        TelescopeSelection = { bg = "#23344b", fg = "", bold = true },
        ["@constant.builtin"] = { fg = "#5ccfe6", bold = true },

        -- Keyword = { fg = "#ff6966" },
        -- Type = { fg = "#f9c775", bold = true },
        -- ["@type.builtin"] = { fg = "#5ccfe6", bold = true },
        -- Function = { fg = "#5ccfe6" },
        -- ["@function.builtin"] = { fg = "#ffcc66", bold = true },
        -- ["@variable"] = { fg = "#f8f8f2" },
        -- ["@property"] = { fg = "#f8f8f2" },
        -- ["@variable.parameter"] = { fg = "#f8f8f2" },
        -- ["@variable.member"] = { fg = "#f8f8f2" },
    },
})

require("vscode").setup({
    -- Alternatively set style in setup
    -- style = 'light'
    -- Enable transparent background
    transparent = true,
    -- Enable italic comment
    italic_comments = true,
    -- Underline `@markup.link.*` variants
    underline_links = true,
    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,
    -- Override colors (see ./lua/vscode/colors.lua)
    color_overrides = {
        --vscLineNumber = '#FFFFFF',
    },
    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        TreesitterContext = { bg = "#303039" },
        NormalFloat = { bg = "" },
        NvimTreeCursorLine = { bg = "#3c3850", fg = "" },
        MatchParen = { bg = "#3c3850", fg = "#d4d4d4" },
        Pmenu = { bg = "#323232" },
        PmenuSel = { bg = "#3c3850", fg = "#d4d4d4" },
        CmpItemAbbrMatch = { fg = "", bold = false },
        CmpItemAbbrMatchFuzzy = { fg = "", bold = false },
        LineNr = { fg = "#505050" },

        TelescopeNormal = { fg = "#808080" },
        TelescopeSelection = { bg = "", fg = "#d4d4d4", bold = true },

        ["@comment.todo"] = { fg = "#cccccc", bg = "NONE", bold = true },
        ["@comment.note"] = { fg = "#cccccc", bg = "NONE", bold = true },
        ["@comment.error"] = { fg = "#f85149", bg = "NONE", bold = true },
        ["@comment.warning"] = { fg = "#cca700", bg = "NONE", bold = true },
    },
})

require("nightfall").setup({
    compile_path = vim.fn.stdpath("cache") .. "/nightfall",
    transparent = false,
    terminal_colors = true,
    dim_inactive = false,
    styles = {
        comments = { italic = true },
        keywords = { italic = false },
        functions = {},
        variables = {},
        numbers = {},
        conditionals = {},
        constants = {},
        operators = {},
        strings = {},
        types = {},
        booleans = {},
        loops = {},
    },
    default_integrations = true,
    integrations = {
        treesitter = { enabled = true, context = true },
        lspconfig = { enabled = true },
        --lazy = { enabled = true },
        --telescope = { enabled = true, style = "borderless" },
        --illuminate = { enabled = true },
        --flash = { enabled = false },
    },
})

require("tokyonight").setup({
    -- your configuration comes here
    -- or leave it empty to use the default settings
    style = "night",     -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    light_style = "day", -- The theme is used when the background is set to light
    transparent = true,  -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
    styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = false },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "transparent",  -- style for sidebars, see below
        floats = "transparent",    -- style for floating windows
    },
    sidebars = { "qf", "help" },   -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
    day_brightness = 0.3,          -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
    hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
    dim_inactive = false,          -- dims inactive windows
    lualine_bold = false,          -- When `true`, section headers in the lualine theme will be bold
    --- You can override specific color groups to use other groups or a hex color
    --- function will be called with a ColorScheme table
    ---@param colors ColorScheme
    on_colors = function(colors) end,
    --- You can override specific highlights to use other groups or a hex color
    --- function will be called with a Highlights and ColorScheme table
    ---@param highlights Highlights
    ---@param colors ColorScheme
    on_highlights = function(highlights, colors) end,
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
    palette_overrides = {
        --bright_red = "#b294bb",
    },
    overrides = {
        --["@type.qualifier"] = { fg = "#fb4934" },
        ["@text.danger.comment"] = { fg = "#fb4934", bg = "NONE" },
        Todo = { fg = "#ebdbb2", bg = "NONE" },
        TreesitterContext = { bg = "#3c3836" },
        CmpItemAbbrMatch = { fg = "", bold = false },
        CmpItemAbbrMatchFuzzy = { fg = "", bold = false },
        LineNr = { fg = "#41454a" },
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
        vim.cmd([[ hi MatchParen gui=bold guifg=#8abeb7 ]])
        vim.cmd([[ hi Search guifg=#e0e0e0 guibg=#49475c blend=20 ]])
    end

    if color == "github_dark_default" then
        vim.cmd([[ hi FloatBorder guifg=#2b2b2b ]])
        vim.cmd([[ hi Comment guifg=#8b949e gui=italic ]])
        vim.cmd([[ hi @constant.builtin gui=bold guifg=#79c0ff ]])
        vim.cmd([[ hi WinSeparator guifg=#6e7681 ]])
        vim.cmd([[ hi CmpItemAbbrMatch guifg=none ]])
        vim.cmd([[ hi TreesitterContext guibg=#283344 ]])
        vim.cmd([[ hi NvimTreeCursorLine guibg=#283344 ]])
        vim.cmd([[ hi TelescopeNormal guifg=#8b949e ]])
        vim.cmd([[ hi TelescopeSelection guibg=#283344 guifg=#e6edf3 gui=bold ]])
        vim.cmd([[ hi TelescopeSelectionCaret guibg=#283344 ]])
        vim.cmd([[ hi TelescopeMatching guibg=none guifg=#ffa657 ]])
        vim.cmd([[ hi @comment.todo guifg=#e6edf3 guibg=NONE gui=bold ]])
        vim.cmd([[ hi @comment.note guifg=#e6edf3 guibg=NONE gui=bold ]])
        vim.cmd([[ hi @comment.error guifg=#cc6666 guibg=NONE gui=bold ]])
        vim.cmd([[ hi @comment.warning guifg=#de935f guibg=NONE gui=bold ]])
        vim.cmd([[ hi Pmenu      guibg=#2b2e34 guifg=#c9d1d9 ]])
        vim.cmd([[ hi PmenuSel   guibg=#1c3d6a guifg=#ffffff ]])
        vim.cmd([[ hi PmenuSbar  guibg=#2b313b ]])
        vim.cmd([[ hi PmenuThumb guibg=#4b5563 ]])
        vim.cmd([[ hi MatchParen gui=bold guifg=#ff9e64 guibg=none ]])
    end

    if color == "nightfall" or color == "tokyonight" then
        vim.cmd([[ hi Visual gui=NONE ]])
        vim.cmd([[ hi DiagnosticVirtualTextError guibg=NONE ]])
        vim.cmd([[ hi DiagnosticVirtualTextHint guibg=NONE ]])
        vim.cmd([[ hi DiagnosticVirtualTextInfo guibg=NONE ]])
        vim.cmd([[ hi DiagnosticVirtualTextOk guibg=NONE ]])
        vim.cmd([[ hi DiagnosticVirtualTextWarn guibg=NONE ]])
    end

    if color == "nightfall" then
        vim.cmd([[ hi Pmenu guibg=#202137 ]])
        vim.cmd([[ hi @constant.builtin gui=bold guifg=#e9e9f4 ]])
        vim.cmd([[ hi @comment.todo guifg=#f2fa95 guibg=#272736 ]])
    end
end

set_colors()
