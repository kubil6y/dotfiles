local colors = {
    white = "#D4D4D4",
    transparent = "#ffffff00"
}

local ab = {
  a = { fg = colors.white, bg = colors.transparent, gui = 'bold' },
  b = { fg = colors.white, bg = colors.transparent},
}

return {
  visual = ab,
  replace = ab,
  inactive = ab,
  normal = ab,
  insert = ab,
}
