--[[
local pid = vim.fn.getpid()
-- On linux/darwin if using a release build, otherwise under scripts/OmniSharp(.Core)(.cmd)
-- for us it is handled by mason
local omnisharp_bin = "home/kubilay/.local/share/nvim/mason/bin"

local config = {
	handlers = {
		["textDocument/definition"] = require("omnisharp_extended").handler,
	},
	cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
	-- rest of your settings
}

return config
]]

local M = {
	use_mono = true,
	handlers = {
		["textDocument/definition"] = require("omnisharp_extended").handler,
	},
}

return M
