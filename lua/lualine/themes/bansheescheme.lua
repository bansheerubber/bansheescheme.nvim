local colors = require("bansheescheme.colors").setup({ transform = true })
local config = require("bansheescheme.config").options

local bansheescheme = {}

bansheescheme.normal = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.blue },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

bansheescheme.insert = {
  a = { bg = colors.green, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.green },
}

bansheescheme.command = {
  a = { bg = colors.yellow, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.yellow },
}

bansheescheme.visual = {
  a = { bg = colors.magenta, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.magenta },
}

bansheescheme.replace = {
  a = { bg = colors.red, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.red },
}

bansheescheme.terminal = {
  a = {bg = colors.green1, fg = colors.black },
  b = {bg = colors.fg_gutter, fg=colors.green1 },
}

bansheescheme.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
}

if config.lualine_bold then
  for _, mode in pairs(bansheescheme) do
    mode.a.gui = "bold"
  end
end

return bansheescheme
