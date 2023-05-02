local colors = {
  medium = '#9E9E9E',
  grey   = '#282828',
  red    = '#0000ffff',
  pine   = '#d7af87',
  deep   = '#7cdce7',
  iris   = '#87afd7',
  love   = '#fd6389',
  white  = '#FFFFFF',
}
return {
  theme = {
    normal = {
      c = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      a = { fg = colors.grey,   bg = colors.pine, gui = "bold" },
      b = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      x = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      y = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      z = { fg = colors.grey,   bg = colors.pine, gui = "bold" },
    },
    visual = {
      c = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      a = { fg = colors.grey,   bg = colors.iris, gui = "bold" },
      b = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      x = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      y = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      z = { fg = colors.grey,   bg = colors.iris, gui = "bold" },
    },
    insert = {
      c = { ft = colors.medium, bg = colors.red,  gui = "bold" },
      a = { fg = colors.grey,   bg = colors.love, gui = "bold" },
      b = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      x = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      y = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      z = { fg = colors.grey,   bg = colors.love, gui = "bold" },
    },
    inactive = {
      c = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      a = { fg = colors.grey,   bg = colors.deep, gui = "bold" },
      b = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      x = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      y = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      z = { fg = colors.grey,   bg = colors.deep, gui = "bold" },
    },
    command = {
      c = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      a = { fg = colors.grey,   bg = colors.deep, gui = "bold" },
      b = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      x = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      y = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      z = { fg = colors.grey,   bg = colors.deep, gui = "bold" },
    },
    replace = {
      c = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      a = { fg = colors.grey,   bg = colors.deep, gui = "bold" },
      b = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      x = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      y = { fg = colors.medium, bg = colors.red,  gui = "bold" },
      z = { fg = colors.grey,   bg = colors.deep, gui = "bold" },
    },
  },
}
