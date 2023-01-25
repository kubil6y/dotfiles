-- ebdbb2,e2e2e2
local colors = {
    white = "#e2e2e2",
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
