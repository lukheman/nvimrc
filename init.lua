-- vim runtime
vim.cmd("runtime init.d/filetypes.vim")
vim.cmd("runtime init.d/plugin.vim")
vim.cmd("runtime init.d/intro.vim")
vim.cmd("runtime! plugins/*vim")

-- lua
require("settings")
require("mappings")
require("plugins")
