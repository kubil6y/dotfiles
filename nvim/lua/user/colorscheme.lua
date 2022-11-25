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

vim.cmd([[ colorscheme gruvbox ]])

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
