-- vim.opt.backspace = "indent,eol,start"
-- vim.opt.backup = true
-- vim.opt.backupdir = vim.loop.os_homedir() .. "/.local/share/nvim/backup"
-- vim.opt.binary = true
-- vim.opt.bomb = true
-- vim.opt.cursorcolumn = false
-- vim.opt.errorbells = false
-- vim.opt.formatoptions:remove("cro")
-- vim.opt.gdefault = true
-- vim.opt.inccommand = "nosplit"
vim.opt.lazyredraw = true
-- vim.opt.list = true
-- vim.opt.mouse = "a"
-- vim.opt.pumblend = 10
-- vim.opt.pumheight = 15
-- vim.opt.pyxversion = 3
-- vim.opt.regexpengine = 1
-- vim.opt.scrolloff = 5
-- vim.opt.showtabline = 2
-- vim.opt.splitbelow = true
-- vim.opt.splitright = true
-- vim.opt.swapfile = false
-- vim.opt.title = true
-- vim.opt.undodir = vim.loop.os_homedir() .. "/.local/share/nvim/undo"
-- vim.opt.undofile = true
-- vim.opt.updatetime = 300
-- vim.opt.visualbell = false
-- vim.opt.wildoptions = "pum"
-- vim.opt.winblend = 0
-- vim.opt.writebackup = true
vim.g.python3_host_prog = "$PREFIX/bin/python3"

-- Basic
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.fileencodings = "utf-8"
vim.opt.compatible = false
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

-- General
vim.opt.clipboard = "unnamedplus"
vim.opt.hidden = true
vim.opt.wildmenu = true
vim.opt.wildmode = "full"
vim.opt.ttimeoutlen = 50
vim.opt.autoread = true
vim.opt.fileformat = "unix"

-- Interface
-- vim.cmd("colorscheme onedark")
-- vim.g.vscode_style = 'dark'
-- vim.opt.bg = "dark"
vim.opt.termguicolors = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.laststatus = 2
vim.opt.linespace = 0
vim.opt.visualbell = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.report = 2
vim.opt.ruler = true
vim.opt.fillchars = "vert:┃"
vim.opt.foldmethod = "marker"
vim.opt.foldlevel = 0
vim.opt.shortmess = "aAtToO"
vim.opt.showcmd = false
vim.opt.showmode = false
vim.opt.showmatch = true
vim.opt.sidescrolloff = 8
vim.opt.cursorline = true
vim.opt.listchars = "tab:»-»"
vim.opt.startofline = false

-- Text Formating
vim.opt.wrap = true
vim.opt.formatoptions = "cqt"        -- see :help fo-table
vim.opt.infercase = true
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.conceallevel = 0
vim.opt.linebreak = true

-- Cursor
-- vim.cmd("highlight Cursor guifg=white guibg=lightskyblue")
-- vim.cmd("highlight iCursor guifg=green guibg=#d79922")
-- vim.opt.guicursor = "n-v-c:block" -- ubah cursor menjadi shape
-- vim.opt.guicursor = "n:block"
