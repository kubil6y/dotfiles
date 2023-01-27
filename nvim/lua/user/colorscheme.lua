local my_colorscheme = "gruvbox"

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
		DiagnosticFloatingError = { fg = "#ff7070" },
		["@type.qualifier"] = { fg = "#fb4934" },

	},
	dim_inactive = false,
	transparent_mode = false,
})

vim.cmd [[ hi GitSignsAdd guibg=NONE ]]
vim.cmd [[ hi GitSignsChange guibg=NONE ]]
vim.cmd [[ hi GitSignsDelete guibg=NONE ]]
vim.cmd("colorscheme " .. my_colorscheme)

--if my_colorscheme == "gruvbox" then
	--vim.cmd [[ hi Normal guibg=#282A36 ]]
--end

if my_colorscheme == "vscode" then
	--vim.cmd [[ hi Visual gui=reverse ]]
	vim.cmd [[ hi NvimTreeNormal guibg=#1E1E1E ]]
end
