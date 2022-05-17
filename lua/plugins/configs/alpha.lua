local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'

-- set header
dashboard.section.header.val = {
  -- "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
  -- "                                                     ",
}

-- Set menu
dashboard.section.buttons.val = {
  dashboard.button( "e", "   New file" , ":ene <BAR> startinsert <CR>"),
  dashboard.button( "f", "   Find file", ":Telescope find_files<CR>"),
  dashboard.button( "r", "   Recent"   , ":Telescope oldfiles<CR>"),
  dashboard.button( "s", "   Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k<CR>"),
  dashboard.button( "q", "   Quit NVIM", ":qa<CR>"),
}

-- set footer
dashboard.section.footer.val = "learn a lot so I can help a lot of people"
-- os.date " %d-%m-%Y   %H:%M:%S",

dashboard.config.opts.noautocmd = true

vim.cmd[[autocmd User AlphaReady echo 'keep coding and stay awesome']]
alpha.setup(dashboard.config)
