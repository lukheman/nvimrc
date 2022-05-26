local ok, feline = pcall(require, "feline")

if not ok then return end

local colors = {
  bg       = '#202328',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}

-- Initialize the components table
local components = {
	active   = {},
	inactive = {},
}

table.insert(components.active, {}) -- (1) left
table.insert(components.active, {}) -- (2) center
table.insert(components.active, {}) -- (3) right

local function active_component_left(component)
  table.insert(components.active[1], component)
end

local function active_component_right(component)
  table.insert(components.active[3], component)
end

-- Insert two sections (left and right) for the inactive statusline
table.insert(components.inactive, {}) -- left
table.insert(components.inactive, {}) -- right

local function inactive_omponent_left(component)
  table.insert(components.inactive[1], component)
end

local function inactive_omponent_right(component)
  table.insert(components.inactive[2], component)
end


-- ### LEFT
active_component_left {
  provider = "▊",
  hl = {
    fg = colors.blue
  }
}

active_component_left {
  provider = " ",
  hl = function()
    local mode_color = {
      n = colors.red,
      i = colors.green,
      v = colors.blue,
      [''] = colors.blue,
      V = colors.blue,
      c = colors.magenta,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      [''] = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.cyan,
      rm = colors.cyan,
      ['r?'] = colors.cyan,
      ['!'] = colors.red,
      t = colors.red,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end
}

active_component_left {
  provider = function()
    local filename = vim.fn.expand("%:t")
    local extension = vim.fn.expand("%:e")
    local icon = require("nvim-web-devicons").get_icon(filename, extension)
    if icon == nil then
      icon = ""
    end
    if vim.fn.empty(filename) == 1 then
      return "  empty "
    end
    if vim.bo.modifiable then
      if vim.bo.modified then
        filename = filename .. " "
      end
    end
    return " " .. icon .. " " .. filename .. " "
  end,
  hl = {
    fg = colors.magenta,
    style = 'bold'
  }
}

active_component_left {
  provider = 'position',
}


-- ### RIGHT
active_component_right {
  provider = 'git_branch',
  icon = "  ",
  hl = {
    fg = colors.violet,
    style = 'bold'
  }
}

active_component_right {
  provider = 'git_diff_added',
  hl = {
    fg = colors.green,
  },
	icon = "  "
}

active_component_right {
  provider = 'git_diff_changed',
  hl = {
    fg = colors.orange,
  },
	icon = "  ",
}

active_component_right {
  provider = 'git_diff_removed',
  hl = {
    fg = colors.red,
  },
	icon = "  "
}

active_component_right {
  provider = " ▊",
  hl = {
    fg = colors.blue
  }
}

inactive_omponent_left {
  provider = "▊",
  hl = {
    fg = colors.blue
  }
}

inactive_omponent_left {
  provider = function()
    local filename = vim.fn.expand("%:t")
    local extension = vim.fn.expand("%:e")
    local icon = require("nvim-web-devicons").get_icon(filename, extension)
    if icon == nil then
      icon = ""
    end
    if vim.fn.empty(filename) == 1 then
      return "  empty "
    end
    if vim.bo.modifiable then
      if vim.bo.modified then
        filename = filename .. " "
      end
    end
    return " " .. icon .. " " .. filename .. " "
  end,
  hl = {
    fg = colors.magenta,
    style = 'bold'
  }
}

inactive_omponent_right {
  provider = " ▊",
  hl = {
    fg = colors.blue
  }
}

feline.setup({
	colors = {
		bg = colors.bg,
		fg = colors.fg,
	},
	components = components,
})
