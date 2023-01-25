-- change in .local/share
-- hl(0, '@error', { fg = c.vscRed, bg = 'NONE' })
-- variables e2e2e2
require("vscode").setup({
	transparent = true,
	italic_comments = false,
	disable_nvimtree_bg = true,
	color_overrides = {},
	group_overrides = {},
})

require("gruvbox").setup({
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

vim.cmd [[colorscheme vscode ]]
