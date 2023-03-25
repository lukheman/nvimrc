local present, nvimtree = pcall(require, "nvim-tree")

if not present then
	return
end

nvimtree.setup {
  filters = {
    dotfiles = false,
    custom = { 'node_modules' }
  },
  disable_netrw = true,
  hijack_netrw = true,
  hijack_cursor = true,
  hijack_unnamed_buffer_when_opening = false,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = false,
  },
  view = {
    adaptive_size = false,
    side = "left",
    width = 25,
    hide_root_folder = true,
  },
  git = {
    enable = true,
    ignore = true,
  },
  filesystem_watchers = {
    enable = true,
  },
  actions = {
    open_file = {
      resize_window = true,
    },
  },
  renderer = {
    highlight_git = false,
    highlight_opened_files = "none",

    indent_markers = {
			enable = true,
			icons = {
				corner = "└ ",
				edge = "│ ",
				none = "  ",
			},
    },

    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = false,
        git = true,
      },

      glyphs = {
        default = "",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
        git = {
          unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "",
          untracked = "",
          deleted = "",
          ignored = "",
        },
      },
    },
  },
}

local map = require("utils").map
map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")
map("n", "<leader>r", "<cmd>NvimTreeRefresh<cr>")
