require("colorizer").setup()

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
		--MatchParen = { fg = "#83a598", bg = "", bold = true },
        --DiagnosticVirtualTextWarn = { fg = gruvbox_colors.neutral_blue },
	},
})

require("rose-pine").setup({
	dark_variant = "main",
	disable_background = true,
	disable_float_background = true,
	disable_italics = true,
	highlight_groups = {
		-- pine = '#3e8fb0', rose = '#ebb0ad'
		["@type.qualifier"] = { fg = "pine" },
		["@type.builtin"] = { fg = "pine" },
		--MatchParen = { fg = "text", bg = "", bold = true },
		TelescopeMatching = { fg = "text", bold = true },
		CmpItemAbbrMatch = { fg = "subtle", bold = false },
		CmpItemAbbrMatchFuzzy = { fg = "text", bold = false },
		PmenuSel = { fg = "text", bg = "#393552" },
	},
})

local vscodeColors = require("vscode.colors").get_colors()
require("vscode").setup({
	transparent = true,

	disable_nvimtree_bg = true,
	color_overrides = {
		-- fff1f1
		vscLightBlue = "#d4d4d4",
	},
	group_overrides = {
        CmpItemAbbr = { fg = "#707070", bg = "" },
        CmpItemAbbrMatch = { fg = "", bg = "" },
        CmpItemAbbrMatchFuzzy = { fg = "", bg = "" },
        PmenuSel = { fg = "#d4d4d4", bg = "#343b41" },
        Pmenu = { fg = "#bbbbbb", bg = "#212121" },
	},
})

require("tokyonight").setup({
	style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	light_style = "day", -- The theme is used when the background is set to light
	transparent = true, -- Enable this to disable setting the background color
	terminal_colors = false, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = false },
		keywords = { italic = false },
		functions = {},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "transparent", -- style for sidebars, see below
		floats = "transparent", -- style for floating windows
	},
	sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
	day_brightness = 1, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
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
	on_highlights = function(hi, colors)
		hi.CmpItemAbbrMatch = { fg = "", bold = false }
		hi.CmpItemAbbrMatchFuzzy = { fg = "", bold = false }
		hi.TelescopeNormal = { fg = "#908caa", bold = false }
		hi.TelescopeMatching = { fg = "#e0def4", bold = true }

		hi.DiagnosticVirtualTextError = { bg = "", fg = "#db4b4b" }
		hi.DiagnosticVirtualTextHint = { bg = "", fg = "#1abc9c" }
		hi.DiagnosticVirtualTextInfo = { bg = "", fg = "#0db9d7" }
		hi.DiagnosticVirtualTextWarn = { bg = "", fg = "#e0af68" }
		hi.DiagnosticUnnecessary = { bg = "", fg = colors.comment }
		hi.MsgArea = { bg = "", fg = "#fffbf6" }
	end,
})

function _G.set_colors(color)
	color = color or "gruvbox"

	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

	if color == "tokyonight" then
        vim.cmd([[ hi @variable guifg=#73daca ]])
        vim.cmd([[ hi @parameter guifg=#73daca ]])
		--vim.cmd([[ hi TelescopeSelection guibg=#283457 ]])
		--vim.cmd([[ hi Visual cterm=reverse gui=reverse guibg=#665c54 ]])
	end

	if color == "vscode" then
		vim.cmd([[ hi LineNr guifg=#6e7681 ]])
		vim.cmd([[ hi @variable.builtin guifg=#C586C0 ]])
		vim.cmd([[ hi @error guifg=NONE ]])
	end
end

--set_colors()
