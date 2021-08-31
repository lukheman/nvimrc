local colors = require("colors.gruvbox")

require"bufferline".setup{
  options = {
      view = "default",
      numbers = "none",
      -- number_style = "superscript" | "" | { "none", "subscript" }, -- buffer_id at index 1, ordinal at index 2
      mappings = true,
      close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
      right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
      left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
      middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
      buffer_close_icon= "",
      modified_icon = "", -- ●
      close_icon = "",
      left_trunc_marker = "",
      right_trunc_marker = "",
      --- name_formatter can be used to change the buffer's label in the bufferline.
      --- Please note some names can/will break the
      --- bufferline so use this at your discretion knowing that it has
      --- some limitations that will NOT be fixed.
      name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
        -- remove extension from markdown files for example
        if buf.name:match('%.md') then
          return vim.fn.fnamemodify(buf.name, ':t:r')
        end
      end,
      max_name_length = 15,
      max_prefix_length = 15, -- prefix used when a buffer is deduplicated
      tab_size = 10,
      diagnostics = false,
      diagnostics_indicator = function(count, level)
        return "("..count..")"
      end,
      show_buffer_icons = true,
      show_buffer_close_icons = true,
      show_close_icon = true,
      show_tab_indicators = true,
      persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
      -- can also be a table containing 2 custom separators
      -- [focused and unfocused]. eg: { "|", "|" }
      separator_style = {"",""},
      enforce_regular_tabs = false,
      always_show_bufferline = true,
      offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
      sort_by = "id"
  },
  highlights = {
    fill = {
      guifg = colors.none,
      guibg = colors.bg0,
    },
    background = {
      guifg = colors.fg3,
      guibg = colors.bg0
    },
    close_button = {
      guifg = colors.fg0,
      guibg = colors.bg0
    },
    close_button_visible = {
      guifg = colors.fg0,
      guibg = colors.bg0
    },
    close_button_selected = {
      guifg = colors.fg0,
      guibg = colors.bg0
    },
    buffer_visible = {
      guifg = colors.fg0,
      guibg = colors.bg0,
      gui = "bold"
    },
    buffer_selected = {
      guifg = colors.fg0,
      guibg = colors.bg0,
      gui = "bold"
    },
    separator_selected = {
        guifg = colors.fg0,
        guibg = colors.bg0
    },
    separator_visible = {
        guifg = colors.fg0,
        guibg = colors.bg0
    },
    separator = {
        guifg = colors.bg0,
        guibg = colors.bg0
    },
  }
}
      -- tab_close = {
      --     guifg = ,
      --     guibg =
      -- },
      -- diagnostic = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>,
      -- },
      -- diagnostic_visible = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>,
      -- },
      -- diagnostic_selected = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>,
      --     gui = "bold,italic"
      -- },
      -- info = {
      --     guifg = <color-value-here>,
      --     guisp = <color-value-here>,
      --     guibg = <color-value-here>
      -- },
      -- info_visible = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>
      -- },
      -- info_selected = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>,
      --     gui = "bold,italic",
      --     guisp = <color-value-here>
      -- },
      -- info_diagnostic = {
      --     guifg = <color-value-here>,
      --     guisp = <color-value-here>,
      --     guibg = <color-value-here>
      -- },
      -- info_diagnostic_visible = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>
      -- },
      -- info_diagnostic_selected = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>,
      --     gui = "bold,italic",
      --     guisp = <color-value-here>
      -- },
      -- warning = {
      --     guifg = <color-value-here>,
      --     guisp = <color-value-here>,
      --     guibg = <color-value-here>
      -- },
      -- warning_visible = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>
      -- },
      -- warning_selected = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>,
      --     gui = "bold,italic",
      --     guisp = <color-value-here>
      -- },
      -- warning_diagnostic = {
      --     guifg = <color-value-here>,
      --     guisp = <color-value-here>,
      --     guibg = <color-value-here>
      -- },
      -- warning_diagnostic_visible = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>
      -- },
      -- warning_diagnostic_selected = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>,
      --     gui = "bold,italic",
      --     guisp = warning_diagnostic_fg
      -- },
      -- error = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>,
      --     guisp = <color-value-here>
      -- },
      -- error_visible = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>
      -- },
      -- error_selected = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>,
      --     gui = "bold,italic",
      --     guisp = <color-value-here>
      -- },
      -- error_diagnostic = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>,
      --     guisp = <color-value-here>
      -- },
      -- error_diagnostic_visible = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>
      -- },
      -- error_diagnostic_selected = {
      --     guifg = <color-value-here>,
      --     guibg = <color-value-here>,
      --     gui = "bold,italic",
      --     guisp = <color-value-here>
      -- },
      -- modified = {
      --     guifg = ,
      --     guibg =
      -- },
      -- modified_visible = {
      --     guifg = ,
      --     guibg =
      -- },
      -- modified_selected = {
      --     guifg = ,
      --     guibg =
      -- },
      -- duplicate_selected = {
      --     guifg = ,
      --     gui = "italic",
      --     guibg =
      -- },
      -- duplicate_visible = {
      --     guifg = ,
      --     gui = "italic",
      --     guibg =
      -- },
      -- duplicate = {
      --     guifg = ,
      --     gui = "italic",
      --     guibg =
      -- },
      -- indicator_selected = {
      --     guifg = ,
      --     guibg =
      -- },
      -- pick_selected = {
      --     guifg = ,
      --     guibg = ,
      --     gui = "bold,italic"
      -- },
      -- pick_visible = {
      --     guifg = ,
      --     guibg = ,
      --     gui = "bold,italic"
      -- },
      -- pick = {
      --     guifg = ,
      --     guibg = ,
      --     gui = "bold,italic"
      -- }
