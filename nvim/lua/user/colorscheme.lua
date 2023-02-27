local my_colorscheme = "rose-pine"

require("rose-pine").setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = "auto",
	--- @usage 'main'|'moon'|'dawn'
	dark_variant = "main",
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = true,
	disable_float_background = true,
	disable_italics = true,
	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = "base",
		panel = "surface",
		border = "highlight_med",
		comment = "muted",
		link = "iris",
		punctuation = "subtle",
		error = "love",
		hint = "iris",
		info = "foam",
		warn = "gold",
		headings = {
			h1 = "iris",
			h2 = "foam",
			h3 = "rose",
			h4 = "gold",
			h5 = "pine",
			h6 = "foam",
		},
		-- or set all headings at once
		-- headings = 'subtle'
	},
	-- Change specific vim highlight groups
	-- https://github.com/rose-pine/neovim/wiki/Recipes
	highlight_groups = {
		ColorColumn = { bg = "rose" },
		-- Blend colours against the "base" background
		CursorLine = { bg = "foam", blend = 10 },
		StatusLine = { fg = "love", bg = "love", blend = 10 },
		TelescopeMatching = { fg = "love", bold = true },
		["@comment"] = { fg = "#605c75" },
	},
})

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
	palette_overrides = {
		bright_blue = "#779c8e",
	},
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
	transparent_mode = true,
})

vim.cmd([[ hi GitSignsAdd guibg=NONE ]])
vim.cmd([[ hi GitSignsChange guibg=NONE ]])
vim.cmd([[ hi GitSignsDelete guibg=NONE ]])

if my_colorscheme == "vscode" then
	--vim.cmd [[ hi Visual gui=reverse ]]
	vim.cmd([[ hi NvimTreeNormal guibg=#1E1E1E ]])
end

vim.cmd("colorscheme " .. my_colorscheme)
