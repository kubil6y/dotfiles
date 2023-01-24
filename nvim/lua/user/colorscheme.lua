local c = require('vscode.colors').get_colors()
require('vscode').setup({
    -- Enable transparent background
    transparent = true,

    -- Enable italic comment
    italic_comments = false,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    color_overrides = {
        vscLineNumber = '#FFFFFF',
        vscLightBlue = '#000000',
    },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
        ['@constant'] = { fg = c.vscBlue, bg = 'NONE' },
        ['@variable.builtin'] = { fg = "#000000", bg = 'NONE' }
    }
})

require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = false,
    strikethrough = true,
    invert_selection = true,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true,
    contrast = "hard",
    overrides = {
        SignColumn = { bg = "NONE" },
        GruvboxRedSign = { bg = "NONE" },
        GruvboxYellowSign = { bg = "NONE" },
        GruvboxBlueSign = { bg = "NONE" },
        GruvboxAquaSign = { bg = "NONE" },
    },
    dim_inactive = false,
    transparent_mode = false,
})

vim.cmd("colorscheme vscode")

--[[
local current_colorscheme = "tokyonight"

local hl = function(thing, opts)
	vim.api.nvim_set_hl(0, thing, opts)
end

function Setup()
	vim.cmd("colorscheme " .. current_colorscheme)
	vim.opt.background = "dark"
	hl("SignColumn", { bg = "none" })
	hl("LineNr", { fg = "#5eacd3" }) -- "#5eacd3","#458588"
	hl("CursorLineNR", { bg = "None" })
	hl("Normal", { bg = "none" })
end

Setup()
]]
