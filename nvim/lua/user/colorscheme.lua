local current_colorscheme = "gruvbox"

local hl = function(thing, opts)
	vim.api.nvim_set_hl(0, thing, opts)
end

local gruvbox = require("gruvbox")

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

function Setup()
	vim.opt.background = "dark"
	vim.cmd("colorscheme " .. current_colorscheme)
	hl("SignColumn", { bg = "none" })
	--hl("LineNr", { fg = "#458588" })  -- "#5eacd3","#458588"
	hl("CursorLineNR", { bg = "None" })
	hl("Normal", { bg = "none" })
end

Setup()
