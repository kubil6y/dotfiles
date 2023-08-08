require("colorizer").setup()

require("rose-pine").setup({
	disable_background = true,
	disable_float_background = true,
	disable_italics = true,
	highlight_groups = {
		TelescopeMatching = { fg = "text", bold = true },
		["@type.qualifier"] = { fg = "#31748f" },
	},
})

local vscodeColors = require("vscode.colors").get_colors()
require("vscode").setup({
	transparent = true,

	disable_nvimtree_bg = true,
	color_overrides = {
		vscLightBlue = "#fff1f1",
	},
	group_overrides = {
		-- remove autocomplete menu highlights
		CmpItemKindVariable = { fg = "", bg = "" },
		CmpItemKindInterface = { fg = "", bg = "" },
		CmpItemKindText = { fg = "", bg = "" },
		CmpItemKindFunction = { fg = "", bg = "" },
		CmpItemKindMethod = { fg = "", bg = "" },
		CmpItemKindKeyword = { fg = "", bg = "" },
		CmpItemKindProperty = { fg = "", bg = "" },
		CmpItemKindUnit = { fg = "", bg = "" },
		CmpItemKindConstructor = { fg = "", bg = "" },
		CmpItemMenu = { fg = "", bg = "" },
		CmpItemAbbr = { fg = "", bg = "" },
		CmpItemAbbrDeprecated = { fg = "", bg = "" },
		CmpItemAbbrMatch = { fg = "", bg = "" },
		CmpItemAbbrMatchFuzzy = { fg = "", bg = "" },

		PmenuSel = { fg = "#fff1f1", bg = "#303030" },
		Pmenu = { fg = "#bbbbbb", bg = "#212121" },
	},
})

local gruvbox_colors = require("gruvbox.palette").get_base_colors(vim.o.background, "")
require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = false,
		comments = false,
		operators = false,
		folds = false,
	},
	strikethrough = true,
	invert_selection = true,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {
		SignColumn = { bg = "NONE" },
		GruvboxRedSign = { bg = "NONE" },
		GruvboxYellowSign = { bg = "NONE" },
		GruvboxBlueSign = { bg = "NONE" },
		GruvboxAquaSign = { bg = "NONE" },
		Todo = { fg = gruvbox_colors.fg0, bg = "NONE" },
		["@text.danger.comment"] = { fg = gruvbox_colors.red, bg = "NONE" },
		["@type.qualifier"] = { fg = "#fb4934" },
		--["@namespace"] = { fg = "#fb4934" },

		-- autocomplete cleanup
		CmpItemKindVariable = { fg = "", bg = "" },
		CmpItemKindInterface = { fg = "", bg = "" },
		CmpItemKindText = { fg = "", bg = "" },
		CmpItemKindFunction = { fg = "", bg = "" },
		CmpItemKindMethod = { fg = "", bg = "" },
		CmpItemKindKeyword = { fg = "", bg = "" },
		CmpItemKindProperty = { fg = "", bg = "" },
		CmpItemKindUnit = { fg = "", bg = "" },
		CmpItemKindConstructor = { fg = "", bg = "" },
		CmpItemMenu = { fg = "", bg = "" },
		CmpItemAbbr = { fg = "", bg = "" },
		CmpItemAbbrDeprecated = { fg = "", bg = "" },
		CmpItemAbbrMatch = { fg = "", bg = "" },
		CmpItemAbbrMatchFuzzy = { fg = "", bg = "" },
		--CursorLine = { bg = "NONE" },
		--CursorLineNr = { fg = "#83a598", bg = "NONE", bold = true },
	},
	dim_inactive = false,
	transparent_mode = true,
})

function _G.set_colors(color)
	color = color or "gruvbox"

	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

	if color == "vscode" then
		vim.cmd([[ hi LineNr guifg=#6e7681 ]])
		vim.cmd([[ hi @variable.builtin guifg=#C586C0 ]])
		vim.cmd([[ hi @error guifg=NONE ]])
	end

	--hi Visual cterm=reverse gui=reverse guibg=#665c54 -- work on this
end

set_colors()
