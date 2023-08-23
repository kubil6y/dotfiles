require("colorizer").setup()

require("rose-pine").setup({
	dark_variant = "main",
	disable_background = true,
	disable_float_background = true,
	disable_italics = true,
	highlight_groups = {
		-- pine = '#3e8fb0', rose = '#ebb0ad'
		["@type.qualifier"] = { fg = "pine" },
		["@type.builtin"] = { fg = "pine" },
		TelescopeMatching = { fg = "text", bold = true },
		CmpItemAbbrMatch = { fg = "subtle", bold = false },
		CmpItemAbbrMatchFuzzy = { fg = "text", bold = false },
		PmenuSel = { fg = "#e0def4", bg = "#393552" },
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
		CmpItemAbbrMatch = { fg = "", bg = "" },
		CmpItemAbbrMatchFuzzy = { fg = "", bg = "" },
		PmenuSel = { fg = "#fff1f1", bg = "#343b41" },
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
	inverse = true,
	contrast = "", -- can be "hard", "soft" or empty string
	dim_inactive = false,
	transparent_mode = true,
	palette_overrides = {},
	overrides = {
		["@text.danger.comment"] = { fg = gruvbox_colors.red, bg = "NONE" },
		["@type.qualifier"] = { fg = "#fb4934" },
		SignColumn = { bg = "NONE" },
		Todo = { fg = gruvbox_colors.fg0, bg = "NONE" },
		CmpItemAbbrMatch = { fg = "", bold = false },
		CmpItemAbbrMatchFuzzy = { fg = "", bold = false },
		--DiagnosticVirtualTextWarn = { fg = gruvbox_colors.neutral_blue },
	},
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
