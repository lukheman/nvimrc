local opt = vim.opt
local g = vim.g

opt.laststatus = 3
opt.showcmd = false
opt.showmode = false

opt.title = true
opt.clipboard = "unnamedplus"
opt.cul = true

-- Text Formating
opt.infercase = true
opt.linebreak = true

-- Editors
opt.nu = true
opt.rnu = true
opt.numberwidth = 2
opt.ruler = false

opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400

opt.lazyredraw = true

-- opt.fillchars = "vert:┃"
opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = false
opt.mouse = "a"
opt.swapfile = false

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- disable some builtin vim plugins
local default_plugins = {
	"2html_plugin",
	"getscript",
	"getscriptPlugin",
	"gzip",
	"logipat",
	"netrw",
	"netrwPlugin",
	"netrwSettings",
	"netrwFileHandlers",
	"matchit",
	"tar",
	"tarPlugin",
	"rrhelper",
	"spellfile_plugin",
	"vimball",
	"vimballPlugin",
	"zip",
	"zipPlugin",
	"tutor",
	"rplugin",
	"syntax",
	"synmenu",
	"optwin",
	"compiler",
	"bugreport",
	"ftplugin",
}

for _, plugin in pairs(default_plugins) do
	g["loaded_" .. plugin] = 1
end
