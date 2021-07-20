lua << EOF
local gl = require('galaxyline')
--local colors = require('galaxyline.theme').default
local condition = require('galaxyline.condition')
local gls = gl.section
local colors = {
  bg = '#1d2021',
  bg2 = '#32302f',
  fg = '#ebdbb2',
  yellow = '#d79922',
  cyan = '#008080',
  darkblue = '#076678',
  green = '#98971a',
  orange = '#d65d0e',
  purple = '#b16286',
  magenta = '#d16d9e',
  grey = '#928374',
  blue = '#458588',
  red = '#cc241d'
}
gl.short_line_list = {'NvimTree','vista','dbui','packer'}


local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end


gls.left[1] = {
  FirstElement = {
    provider = function() return '▋' end,
    highlight = {colors.yellow, colors.yellow}
  }
}

gls.left[2] = {
  viMode = {
    provider = function()
      local alias = {n='NORMAL', i='INSERT', c='COMMAND', v='VISUAL', V='VISUAL LINE', ['']='VISUAL BLOCK'}
      return alias[vim.fn.mode()]
    end,
    separator = ' ',
    separator_highlight = {colors.yellow, function()
      if not buffer_not_empty() then
        return colors.bg
      end
      return colors.bg2
    end},
    icon = ' ',
    highlight = {colors.bg2, colors.yellow, 'bold'},
  }
}

gls.left[3] = {
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color, colors.bg2}
  }
}

gls.left[4] = {
  FileName = {
    provider = {'FileName', 'FileSize'},
    condition = buffer_not_empty,
    separator = '',
    separator_highlight = {colors.bg2, colors.bg},
    highlight = {colors.gray, colors.bg2}
  }
}

gls.right[1] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.blue, colors.bg, 'bold'}
  }
}

gls.right[2] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    highlight = {colors.gray, colors.bg}
  }
}

gls.right[3] = {
  SeparatorLeftLineColumn = {
    provider = function() return ' ' end,
    highlight = {colors.blue, colors.bg}
  }
}

gls.right[4] = {
  LineInfo = {
    provider = 'LineColumn',
    highlight = {colors.fg, colors.blue}
  }
}


EOF
