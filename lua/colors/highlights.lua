local c = require("colors.themes.gruvbox")
local highlight = require("utils").highlight

-- Telescope
highlight("TelescopeSelection", {fg=c.orange})
highlight("TelescopeMatching", {fg=c.green, gui="bold"})
highlight("TelescopePromptBorder", {fg=c.yellow, gui="bold"})
highlight("TelescopeResultsBorder", {fg=c.yellow, gui="bold"})
highlight("TelescopePromptPrefix", {fg=c.orange})

-- Indent Blankline
highlight("IndentBlanklineChar", { fg=c.bg2 })

-- GitSigns
highlight("GitSignsAdd", { fg=c.blue, bg=c.none })
highlight("GitSignsChange", { fg=c.yellow, bg=c.none })
highlight("GitSignsDelete", { fg=c.red, bg=c.none })
