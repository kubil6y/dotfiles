local function custom_theme(theme)
	theme = theme or "rose-pine"
	local fg = ""
	if theme == "gruvbox" then
		fg = "#ebdbb2"
	elseif theme == "vscode" then
		fg = "#d4d4d4"
	elseif theme == "rose-pine" then
		fg = "#e0def4"
	elseif theme == "gruvbuddy" then
		fg = "#e0e0e0"
	end

	local colors = {
		fg = fg,
		bg = "#ffffff00",
	}
	local ab = {
		a = { fg = colors.fg, bg = colors.bg, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg },
	}
	local abc = {
		a = { fg = colors.fg, bg = colors.bg, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg },
		c = { fg = colors.fg, bg = colors.bg },
	}
	return {
		visual = ab,
		replace = ab,
		inactive = abc,
		normal = abc,
		insert = ab,
	}
end

local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = "E:", warn = "W:" },
	colored = true,
	always_visible = true,
}

local filetype = {
	"filetype",
	icons_enabled = false,
}

local location = {
	"location",
	padding = 1,
}

lualine.setup({
	options = {
		globalstatus = true,
		icons_enabled = true,
		theme = custom_theme("gruvbuddy"),
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "alpha", "dashboard" },
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", diagnostics },
		lualine_c = { "filename" },
		lualine_x = { filetype },
		lualine_y = { location },
		lualine_z = { "progress" },
	},
})
