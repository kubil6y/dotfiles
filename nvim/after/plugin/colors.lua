require("nightfall").setup({
	compile_path = vim.fn.stdpath("cache") .. "/nightfall",
	transparent = false,
	terminal_colors = true,
	dim_inactive = false,
	styles = {
		comments = { italic = true },
		keywords = { italic = false },
		functions = {},
		variables = {},
		numbers = {},
		conditionals = {},
		constants = {},
		operators = {},
		strings = {},
		types = {},
		booleans = {},
		loops = {},
	},
	default_integrations = true,
	integrations = {
		lazy = { enabled = true },
		telescope = { enabled = true, style = "borderless" },
		illuminate = { enabled = true },
		treesitter = { enabled = true, context = true },
		lspconfig = { enabled = true },
		flash = { enabled = false },
	},
})

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
        TreesitterContext = { bg = "#26233a" },
		["@comment.todo"] = { fg = "text", bg = "NONE", bold = true },
		["@comment.note"] = { fg = "text", bg = "NONE", bold = true },
		["@comment.error"] = { fg = "love", bg = "NONE", bold = true },
		["@comment.warning"] = { fg = "gold", bg = "NONE", bold = true },

        Pmenu = { bg = "#1f1d2e" },
        --NvimTreeCursorLine = { bg = "#26233a" },
        --QuickFixLine = { bg = "#26233a", fg = "text" },
        --qfLineNr = { fg = "text" },

        --TelescopeSelection = { fg = "#e0def4", bg = "#26233a", bold = true },
        --TelescopeSelectionCaret = { fg = "#e0def4", bg = "#26233a" },
        --TelescopeNormal = { fg = "#635e80" },
		--PmenuSel = { bg = "#26233a" },
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

		--vim.cmd([[
		--augroup MyKeywordHighlight
		--autocmd!
		--autocmd FileType html,javascript,javascriptreact,typescriptreact hi @tag guifg=#a992cd gui=bold
		--autocmd FileType html,javascript,javascriptreact,typescriptreact hi @tag.attribute guifg=#79b5ad gui=NONE
		--augroup END
		--]])
	end

	if color == "github_dark_default" then
		vim.cmd([[ hi Comment guifg=#8b949e gui=italic ]])
		vim.cmd([[ hi @constant.builtin gui=bold guifg=#79c0ff ]])
		--vim.cmd([[ hi MatchParen guifg=#d2a8ff guibg=none gui=bold ]])
		vim.cmd([[ hi WinSeparator guifg=#6e7681 ]])
		vim.cmd([[ hi CmpItemAbbrMatch guifg=none ]])
		vim.cmd([[ hi PmenuSel guibg=#212b3a ]])
		--vim.cmd([[ hi Pmenu guibg=#212b3a ]])
		vim.cmd([[ hi TreesitterContext guibg=#212b3a ]])
		vim.cmd([[ hi NvimTreeCursorLine guibg=#212b3a ]])
		vim.cmd([[ hi TelescopeNormal guifg=#8b949e ]])
		vim.cmd([[ hi TelescopeSelection guibg=#212b3a guifg=#e6edf3 gui=bold ]])
		vim.cmd([[ hi TelescopeSelectionCaret guibg=#212b3a ]])
		vim.cmd([[ hi TelescopeMatching guibg=none guifg=#ffa657 ]])
		vim.cmd([[ hi @comment.todo guifg=#e6edf3 guibg=NONE gui=bold ]])
		vim.cmd([[ hi @comment.note guifg=#e6edf3 guibg=NONE gui=bold ]])
		vim.cmd([[ hi @comment.error guifg=#cc6666 guibg=NONE gui=bold ]])
		vim.cmd([[ hi @comment.warning guifg=#de935f guibg=NONE gui=bold ]])
	end

	if color == "nightfall" or color == "tokyonight" then
		vim.cmd([[ hi Visual gui=NONE ]])
		vim.cmd([[ hi DiagnosticVirtualTextError guibg=NONE ]])
		vim.cmd([[ hi DiagnosticVirtualTextHint guibg=NONE ]])
		vim.cmd([[ hi DiagnosticVirtualTextInfo guibg=NONE ]])
		vim.cmd([[ hi DiagnosticVirtualTextOk guibg=NONE ]])
		vim.cmd([[ hi DiagnosticVirtualTextWarn guibg=NONE ]])
	end
end

set_colors()
