-- Custom transparent lualine theme
local M = {}
M.theme = function(theme)
	local fg = ""
	if theme == "gruvbox" then
		fg = "#ebdbb2"
	elseif theme == "vscode" then
		fg = "#e2e2e2"
	end
	local colors = {
		fg = fg,
		bg = "#ffffff00"
	}
	local ab = {
		a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
		b = { fg = colors.fg, bg = colors.bg },
	}
	local abc = {
		a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
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
return M
