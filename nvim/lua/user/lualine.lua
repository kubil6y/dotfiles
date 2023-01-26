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
		theme = require("user/kubilua").theme("vscode"),
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
