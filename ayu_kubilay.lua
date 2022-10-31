-- ayu_dark modified to ayu_kubilay
-- https://gist.github.com/shadmansaleh/000871c9a608a012721c6acc6d7a19b9
-- stylua: ignore

local themes = {
    tokyonight = "#5a4a78",
    dark_red = "#942C2C",
    darkplus = "#264F78"
}

local colors = {
  color2   = "#ebdbb2",
  color4   = "#e6e1cf",
  color5   = "#ffffff00", -- orginal: #14191f
  color10  = themes.darkplus,
  color9   = "#565f89",
}

local abc = {
  --c = { fg = colors.color9, bg = colors.color2 },
  a = { fg = colors.color2, bg = colors.color10, gui = 'bold' },
  b = { fg = colors.color4, bg = colors.color5 },
}

local ab = {
  a = { fg = colors.color2, bg = colors.color10, gui = 'bold' },
  b = { fg = colors.color4, bg = colors.color5 },
}

return {
  visual = ab,
  replace = ab,
  inactive = abc,
  normal = abc,
  insert = ab,
}
