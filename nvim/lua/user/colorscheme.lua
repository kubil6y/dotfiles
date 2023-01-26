-- change in .local/share, setup does not work
-- hl(0, '@error', { fg = c.vscRed, bg = 'NONE' })
-- vscLightBlue e2e2e2
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
	invert_selection = true,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "hard", -- can be "hard", "soft" or empty string
	palette_overrides = {},
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

vim.cmd [[ highlight GitSignsAdd guibg=NONE ]]
vim.cmd [[ highlight GitSignsChange guibg=NONE ]]
vim.cmd [[ highlight GitSignsDelete guibg=NONE ]]
vim.cmd [[ colorscheme gruvbox ]]
