local ok, nvimtree = pcall(require, 'nvim-tree')

if not ok then
  return
end

vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1,
  folder_arrows = 1
}
vim.g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
    unstaged = '',
    staged = '✓',
    unmerged = '',
    renamed = '➜',
    untracked = '',
    deleted = '',
    ignored = '^'
  },
  folder = {
    default = '',
    open = '',
    empty = '',
    empty_open = '',
    symlink = '',
    symlink_open = ''
  },
  lsp = {
    hint = '',
    info = '',
    warning = '',
    error = ''
  }
}

nvimtree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {},
  auto_close = true,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = false,
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  view = {
    width = 25,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  },
}
