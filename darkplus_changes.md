# Darkplus.nvim Colorscheme Changes

@theme.lua
Make autocomplete matches bold:
hl(0, "CmpItemAbbrMatch", { fg = c.ui3_blue, bg = 'NONE', bold=true })

Disable italics:
1. local italic = false -- changed by me.
2. change `italic=false` to italic=italic

@palette
ui2_blue = "#003a5c"
