local present, indent_blankline = pcall(require, "indent_blankline")
if present then indent_blankline.setup {
    -- '│'
    char = '▏',
    show_first_indent_level = false,
    max_indent_increase = 2,
    show_trailing_blankline_indent = false,
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
end
