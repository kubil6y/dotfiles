require("rose-pine").setup({
	dark_variant = "main",
	disable_background = true,
	disable_float_background = true,
	disable_italics = true,
	highlight_groups = {
        TreesitterContext = { bg = "#2b2842" },
        NvimTreeCursorLine = { bg = "#2b2842" },
        QuickFixLine = { bg = "#2b2842", fg = "text" },
        qfLineNr = { fg = "text" },
        PmenuSel = { bg = "#2b2842" },

        ["@comment.todo"] = { fg = "text", bg = "NONE", bold = true },
        ["@comment.note"] = { fg = "text", bg = "NONE", bold = true },
        ["@comment.error"] = { fg = "love", bg = "NONE", bold = true },
        ["@comment.warning"] = { fg = "gold", bg = "NONE", bold = true },

        TelescopeSelection = { fg = "#e0def4", bg = "#26233a", bold = true },
        TelescopeSelectionCaret = { fg = "#e0def4", bg = "#26233a" },
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
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "hl_inlay_hints", { fg = "#59566d" })
end

set_colors()
