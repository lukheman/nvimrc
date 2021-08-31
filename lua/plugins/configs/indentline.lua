local indentline = require("indent_blankline")

indentline.setup {
  -- '│'
  char = '▏',
  show_first_indent_level = false,
  filetype_exclude = {
    "NvimTree",
    "Preview",
    "__doc__",
    "dashboard",
    "dashpreview",
    "fzf",
    "help",
    "log",
    "man",
    "markdown",
    "nerdtree",
    "peekaboo",
    "sagahover",
    "startify",
    "terminal",
    "translator",
    "vista",
    "packer",
    "aerial",
    "lspinfo",
    "lspsagafinder",
    "Trouble",
  },
  buftype_exclude = { "terminal", "man", "trouble" }
}
