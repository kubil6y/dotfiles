require("rose-pine").setup({
	dark_variant = "main",
	disable_background = true,
	disable_float_background = true,
	disable_italics = true,
	highlight_groups = {
		--["@type.builtin"] = { fg = "pine" },
		--CmpItemAbbrMatch = { fg = "subtle", bold = false },
		--CmpItemAbbrMatchFuzzy = { fg = "text", bold = false },
		["@type.qualifier"] = { fg = "pine" },
		TreesitterContext = { bg = "#2b2842" },
		NvimTreeCursorLine = { bg = "#2b2842" },
		QuickFixLine = { bg = "#2b2842", fg = "text" },
		qfLineNr = { fg = "text" },
		PmenuSel = { bg = "#2b2842" },
		TelescopeMatching = { fg = "#f5bc6d", bold = false }, -- f6c177,9c6cd7
		TelescopeSelection = { fg = "text", bold = true },
		TelescopeSelectionCaret = { fg = "text" },
	},
})

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
		["@type.qualifier"] = { fg = "#fb4934" },
		["@text.danger.comment"] = { fg = "#fb4934", bg = "NONE" },
		Todo = { fg = "#ebdbb2", bg = "NONE" },
		TreesitterContext = { bg = "#3c3836" },
		-- autocomplete
		--Pmenu = { bg = "" },
		--PmenuSel = { fg = "#ebdbb2", bg = "#504945", bold = false },
		--CmpItemAbbr = { fg = "#928374" },
		CmpItemAbbrMatch = { fg = "", bold = false },
		CmpItemAbbrMatchFuzzy = { fg = "", bold = false },
	},
})

function _G.set_colors(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)
    if color == "vscode" then
        vim.cmd([[ hi @text.uri guifg=#6a9955 gui=underline ]])
        vim.cmd([[ hi PmenuSel guibg=#04395e guifg=#NONE ]])
        vim.cmd([[ hi NvimTreeNormal guibg=#1f1f1f ]])
        vim.cmd([[ hi Normal guibg=#1f1f1f ]])
        vim.cmd([[ hi markdownBoldItalic guifg=#18a2fe gui=bold ]])
    end
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "hl_inlay_hints", { fg = "#59566d" })
end

set_colors("vscode")
