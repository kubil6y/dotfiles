require("tokyonight").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	light_style = "day", -- The theme is used when the background is set to light
	transparent = true, -- Enable this to disable setting the background color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = true },
		keywords = { italic = false },
		functions = {},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "transparent", -- style for sidebars, see below
		floats = "transparent", -- style for floating windows
	},
	sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
	day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
	hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
	dim_inactive = false, -- dims inactive windows
	lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

	--- You can override specific color groups to use other groups or a hex color
	--- function will be called with a ColorScheme table
	---@param colors ColorScheme
	on_colors = function(colors) end,

	--- You can override specific highlights to use other groups or a hex color
	--- function will be called with a Highlights and ColorScheme table
	---@param highlights Highlights
	---@param colors ColorScheme
	on_highlights = function(highlights, colors) end,
})

require("rose-pine").setup({
	dark_variant = "moon",
	disable_background = true,
	disable_float_background = true,
	disable_italics = true,
	highlight_groups = {
		Comment = { italic = true },

		["@comment.todo"] = { fg = "text", bg = "NONE", bold = true },
		["@comment.note"] = { fg = "text", bg = "NONE", bold = true },
		["@comment.error"] = { fg = "love", bg = "NONE", bold = true },
		["@comment.warning"] = { fg = "gold", bg = "NONE", bold = true },

		--TelescopeNormal = { fg = "#635e80" },
		--TreesitterContext = { bg = "#26233a" },
		--NvimTreeCursorLine = { bg = "#26233a" },
		--QuickFixLine = { bg = "#26233a", fg = "text" },
		--qfLineNr = { fg = "text" },
		--PmenuSel = { bg = "#26233a" },
		--TelescopeSelection = { fg = "#e0def4", bg = "#26233a", bold = true },
		--TelescopeSelectionCaret = { fg = "#e0def4", bg = "#26233a" },
	},
})

require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = false,
		comments = true,
		operators = false,
		folds = true,
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

	if color == "gruvbuddy" then
		--vim.cmd([[ hi @function.method.call gui=bold guifg=#f8fe7a ]])
		--vim.cmd([[ hi @function.call gui=bold guifg=#f8fe7a ]])
		--vim.cmd([[ hi @function gui=bold guifg=#f8fe7a ]])

		vim.cmd([[ hi LineNr guifg=#41454a ]])
		vim.cmd([[ hi TreesitterContext guibg=#2b2b2b ]])
		vim.cmd([[ hi TelescopeSelection guifg=#e0e0e0 guibg=#333951 gui=bold ]])
		vim.cmd([[ hi TelescopeMatching guifg=#e89155 gui=NONE ]])
		vim.cmd([[ hi TelescopeNormal guifg=#b0b1b0 ]])
		vim.cmd([[ hi Visual guibg=#333951 ]])
		vim.cmd([[ hi @comment.todo guifg=#e0e0e0 gui=bold ]])
		vim.cmd([[ hi @comment.note guifg=#e0e0e0 gui=bold ]])
		vim.cmd([[ hi @comment.error guifg=#cc6666 gui=bold ]])
		vim.cmd([[ hi @comment.warning guifg=#de935f gui=bold ]])
	end

	if color == "tokyonight" then
		vim.cmd([[ hi DiagnosticVirtualTextError guibg=NONE ]])
		vim.cmd([[ hi DiagnosticVirtualTextHint guibg=NONE ]])
		vim.cmd([[ hi DiagnosticVirtualTextInfo guibg=NONE ]])
		vim.cmd([[ hi DiagnosticVirtualTextOk guibg=NONE ]])
		vim.cmd([[ hi DiagnosticVirtualTextWarn guibg=NONE ]])
	end
end

set_colors()
