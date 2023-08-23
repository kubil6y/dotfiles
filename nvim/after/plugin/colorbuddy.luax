if not pcall(require, "colorbuddy") then
	return
end

vim.opt.termguicolors = true
rawset(require("colorbuddy").styles, "italic", require("colorbuddy").styles.none)
require("colorbuddy").colorscheme("gruvbuddy")

local c = require("colorbuddy.color").colors
local Group = require("colorbuddy.group").Group
local Color = require("colorbuddy.color").Color
local g = require("colorbuddy.group").groups
local s = require("colorbuddy.style").styles

Group.new("@variable", c.superwhite, nil)
Group.new("GoTestSuccess", c.green, nil, s.bold)
Group.new("GoTestFail", c.red, nil, s.bold)
Group.new("TSPunctBracket", c.orange:light():light())
Group.new("StatuslineError1", c.red:light():light(), g.Statusline)
Group.new("StatuslineError2", c.red:light(), g.Statusline)
Group.new("StatuslineError3", c.red, g.Statusline)
Group.new("StatuslineError3", c.red:dark(), g.Statusline)
Group.new("StatuslineError3", c.red:dark():dark(), g.Statusline)
Group.new("pythonTSType", c.red)
Group.new("goTSType", g.Type.fg:dark(), nil, g.Type)
Group.new("typescriptTSConstructor", g.pythonTSType)
Group.new("typescriptTSProperty", c.blue)
Group.new("WinSeparator", nil, nil)
Group.new("TSTitle", c.blue)
Group.new("InjectedLanguage", nil, g.Normal.bg:dark())
Group.new("LspParameter", nil, nil, s.italic)
Group.new("LspDeprecated", nil, nil, s.strikethrough)
Group.new("@function.bracket", g.Normal, g.Normal)
Group.new("@variable.builtin", c.purple:light():light(), c.None)
Group.new("VirtNonText", c.gray3:dark(), nil, s.italic)
Group.new("TreesitterContext", nil, g.Normal.bg:light())
Group.new("TreesitterContextLineNumber", c.blue)
Group.new("@property", c.blue)
Group.new("@punctuation.bracket.rapper", c.gray3, nil, s.none)
Group.new("@rapper_argument", c.red, nil, s.italic)
Group.new("@rapper_return", c.orange:light(), nil, s.italic)

-- region custom_settings
Group.new("Todo", c.superwhite, nil, s.bold)
Group.new("@text.danger.comment", c.superwhite, nil, s.bold)
Group.new("@text.note.comment", c.superwhite, nil, s.bold)
-- endregion custom_settings

vim.cmd([[highlight link @function.call.lua LuaFunctionCall]])
vim.cmd([[
  hi link @lsp.type.variable.lua variable
  hi link @lsp.type.variable.go variable
  hi link @lsp.type.variable.rust variable
  hi link @lsp.type.variable.typescriptreact variable
  hi link @lsp.type.variable.typescript variable
  hi link @lsp.type.variable.javascript variable
  hi link @lsp.type.variable.cpp variable
  hi link @lsp.type.namespace @namespace
  hi link @punctuation.bracket.rapper @text.literal
  hi link @normal Normal
  hi SignColumn guibg=NONE
  hi LineNr guibg=NONE
  hi Normal guibg=NONE
  hi NormalFloat guibg=NONE
]])
