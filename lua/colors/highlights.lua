local c = require("colors.themes.gruvbox")
local highlight = require("utils").highlight

-- Telescope
highlight("TelescopeSelection", {fg=c.green, gui="bold"})
highlight("TelescopeMatching", {fg=c.orange, gui="bold"})
highlight("TelescopePromptBorder", {fg=c.gray, gui="bold"})
highlight("TelescopeResultsBorder", {fg=c.gray, gui="bold"})
highlight("TelescopePromptPrefix", {fg=c.gray, gui="bold"})

-- Indent Blankline
highlight("IndentBlanklineChar", { fg=c.bg2 })
