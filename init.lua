-- vim runtime
vim.cmd("runtime init.d/filetypes.vim")
vim.cmd("runtime init.d/intro.vim")
-- vim.cmd("runtime! plugins/*vim")

-- lua
require("settings")
require("modules.packer")
require("mappings")
-- require("plugins")
