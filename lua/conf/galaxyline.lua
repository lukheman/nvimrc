local gl = require("galaxyline")
local gls = gl.section
local condition = require("galaxyline.condition")
local buffer = require("galaxyline.provider_buffer")
local fileinfo = require("galaxyline.provider_fileinfo")
-- local diagnostic = require("galaxyline.provider_diagnostic")
-- local lspclient = require("galaxyline.provider_lsp")
local icons = require("galaxyline.provider_fileinfo").define_file_icon()
local colors = require("colors.gruvbox")

icons["man"] = { colors.green, "" }

gls.left[1] = {
  Mode = {
      provider = function()
          local alias = { n = "NORMAL", i = "INSERT", c = "COMMAND", V = "VISUAL", [""] = "VISUAL" }
          return string.format("   %s ", alias[vim.fn.mode()])
      end,
      separator = " ",
      separator_highlight = { colors.none, colors.bg2},
      highlight = { colors.bg0, colors.yellow, "bold" }
  }
}
gls.left[2] = {
  FileIcon = {
      provider = fileinfo.get_file_icon,
      condition = condition.buffer_not_empty,
      highlight = {
          fileinfo.get_file_icon_color,
          colors.bg2,
      }
  }
}
gls.left[3] = {
  FileName = {
      provider = function()
          return string.format("%s| %s ", fileinfo.get_file_size(), fileinfo.get_current_file_name())
      end,
      separator = '',
      separator_highlight = {colors.bg2, colors.bg1},
      condition = condition.buffer_not_empty,
      highlight = { colors.fg0, colors.bg2 }
  }
}

gl.short_line_list = { "NvimTree" }
gls.short_line_left[1] = {
  BufferIcon = {
      provider = function()
          local icon = buffer.get_buffer_type_icon()
          if icon ~= nil then
              return string.format(" %s ", icon)
          end
      end,
      highlight = { colors.fg4, colors.bg0 },
  }
}
gls.short_line_left[2] = {
  BufferName = {
    provider = function()
        if vim.fn.index(gl.short_line_list, vim.bo.filetype) ~= -1 then
            local filetype = vim.bo.filetype
            if filetype == "NvimTree" then
                return " Explorer "
            end
        else
            if fileinfo.get_current_file_name() ~= "" then
                return string.format(
                    " %s %s| %s ",
                    fileinfo.get_file_icon(),
                    fileinfo.get_file_size(),
                    fileinfo.get_current_file_name()
                )
            end
        end
    end,
    separator = "",
    highlight = { colors.fg4, colors.bg0 },
  }
}

gls.right[1] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE', colors.bg1},
    highlight = {colors.blue, colors.bg1, 'bold'}
  }
}

gls.right[2] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    highlight = {colors.gray, colors.bg1}
  }
}

gls.right[3] = {
  LineInfo = {
    provider = 'LineColumn',
    highlight = {colors.fg, colors.blue},
    separator = " ",
    separator_highlight = {colors.bg1, colors.bg1},
  }
}
