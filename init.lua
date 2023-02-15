vim.defer_fn(function()
  pcall(require, "impatient")
end, 0)

-- options
require("core.options")

-- auto commands
require("core.autocmds")

-- keymaps
require("core.keymaps")

-- setup packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  print("Installing Packer...")
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd "packadd packer.nvim"
  require "plugins"
  vim.cmd "PackerSync"
end

-- -- load plugins
require("plugins")
