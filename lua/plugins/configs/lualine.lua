local ok, lualine = pcall(require, 'lualine')
if not ok then
  return
end
local ok, devicons = pcall(require, 'nvim-web-devicons')

local colors = {
  bg = '#282c34',
  fg = '#abb2bf',
  section_bg = '#38393f',
  blue = '#61afef',
  green = '#98c379',
  purple = '#c678dd',
  orange = '#e5c07b',
  red = '#e06c75',
  yellow = '#e5c07b',
  darkgrey = '#2c323d',
  middlegrey = '#8791A5',
}

local config = {
  options = {
    icons_enabled = true,
    -- component_separators = {'', ''},
    -- section_separators = {'', ''},
    -- disabled_filetypes = {}
    component_separators = "",
    section_separators = "",
    theme = {
      normal = {c={fg=colors.fg, bg=colors.bg}},
      inactive = {c={fg=colors.fg, bg=colors.bg}}
    }
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  -- tabline = {
  --   lualine_a = {},
  --   lualine_b = {},
  --   lualine_c = { require'tabline'.tabline_buffers },
  --   lualine_x = { require'tabline'.tabline_tabs },
  --   lualine_y = {},
  --   lualine_z = {},
  -- },
}

local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

local conditions = {
  buffer_not_empty = function() return vim.fn.empty(vim.fn.expand('%:t')) ~= 1 end,
  hide_in_width = function() return vim.fn.winwidth(0) > 60 end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end
}

local function file_icon()
  local fname, fext = vim.fn.expand('%:t'), vim.fn.expand('%:e')
  local icon, ext = devicons.get_icon(fname, fext)
  return icon
end

local function file_readonly()
  if vim.bo.filetype == 'help' then
    return ''
  end
  if vim.bo.readonly == true then
    return '  '
  end
  return ''
end


local mode_color = function()
  local mode_colors = {
    [110] = colors.green,
    [105] = colors.blue,
    [99] = colors.green,
    [116] = colors.blue,
    [118] = colors.purple,
    [22] = colors.purple,
    [86] = colors.purple,
    [82] = colors.red,
    [115] = colors.red,
    [83] = colors.red,
  }

  local color = mode_colors[vim.fn.mode():byte()]
  if color ~= nil then
    return color
  else
    return colors.purple
  end
end

ins_left {
  -- mode
  function ()
    local aliases = {
      [110] = 'NORMAL',
      [105] = 'INSERT',
      [99] = 'COMMAND',
      [116] = 'TERMINAL',
      [118] = 'VISUAL',
      [22] = 'V-BLOCK',
      [86] = 'V-LINE',
      [82] = 'REPLACE',
      [115] = 'SELECT',
      [83] = 'S-LINE',
    }

    vim.api.nvim_command('hi! LualineMode guifg='..colors.bg..' guibg='..mode_color()..' gui=bold')
    local mode = vim.fn.mode():byte()
    return ' '..mode
  end,
  color = "LualineMode",
  condition = conditions.hide_in_width
}

ins_left {
  -- file icon
  file_icon,
  condition = conditions.buffer_not_empty,
  color = {fg = colors.fg, bg=colors.section_bg}
}

ins_left {
  -- filename
  function()
    local file = vim.fn.expand '%:t'
    if vim.fn.empty(file) == 1 then
      return ''
    end
    if string.len(file_readonly()) ~= 0 then
      return file..file_readonly()
    end
    if vim.bo.modifiable then
      if vim.bo.modified then
        return file..' '
      end
    end
    return file
  end,
  condition = conditions.buffer_not_empty,
  color = {fg = colors.fg, bg=colors.section_bg}
}

ins_right {
  -- git diff
  'diff',
  symbols = {added = ' ', modified = ' ', removed = ' '},
  color_added = colors.green,
  color_modified = colors.orange,
  color_removed = colors.red
}

ins_right {
  -- git branch
  'branch',
  icon = '',
  color = {fg=colors.middlegrey},
  condition = conditions.check_git_workspace,
}

ins_right {
  'location',
  color = {fg=colors.darkgrey, bg=colors.blue},
  condition = conditions.hide_in_width
}

ins_right {
  -- whitespace
  function()
    local trail = vim.fn.search('\\s$', 'nw')
    if trail ~= 0 then
      return ''
    else
      return nil
    end
  end,
  condition = conditions.buffer_not_empty,
  color = {fg=colors.darkgrey, bg=colors.red}
}

lualine.setup(config)
