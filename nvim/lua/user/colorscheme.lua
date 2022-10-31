local current_colorscheme = "gruvbox"

local hl = function(thing, opts)
	vim.api.nvim_set_hl(0, thing, opts)
end

local vscode = require("vscode")
local gruvbox = require("gruvbox")
local tokyonight = require("tokyonight")

-- change in .local/share
-- hl(0, '@error', { fg = c.vscRed, bg = 'NONE' })
vscode.setup({
	transparent = true,
	italic_comments = false,
	disable_nvimtree_bg = true,
	color_overrides = {
		vscLightBlue = "#d4d4d4",
	},
	group_overrides = {},
})

gruvbox.setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = false,
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true,
	contrast = "soft",
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

tokyonight.setup({
	style = "storm",
	transparent = true,
	terminal_colors = true,
	styles = {
		comments = "NONE",
		keywords = "NONE",
		functions = "NONE",
		variables = "NONE",
		sidebars = "transparent",
		floats = "normal",
	},
	sidebars = { "qf", "help" },
	day_brightness = 0.3,
	hide_inactive_statusline = false,
	dim_inactive = false,
	lualine_bold = false,
	on_colors = function(colors) end,
	on_highlights = function(highlights, colors)
		highlights.CmpItemAbbrMatch = { fg = "#f7768e", bg = colors.none, bold = true }
	end,
})

function Setup()
	vim.opt.background = "dark"
	vim.cmd("colorscheme " .. current_colorscheme)
	hl("SignColumn", { bg = "none" })
	hl("ColorColumn", { ctermbg = 0, bg = "#555555" })
	hl("CursorLineNR", { bg = "None" })
	hl("Normal", { bg = "none" })
	hl("LineNr", { fg = "#5eacd3" })
end

Setup()
