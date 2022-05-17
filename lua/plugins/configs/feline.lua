local ok, feline = pcall(require, "feline")

if not ok then return end


local assets = {
	left_semicircle = "",
	right_semicircle = "",
	right_semicircle_cut = "",
	left_semicircle_cut = "",
	vertical_bar_chubby = "█",
	vertical_bar_medium = "┃",
	vertical_bar_thin = "│",
	left_arrow_thin = "",
	right_arrow_thin = "",
	left_arrow_filled = "",
	right_arrow_filled = "",
	slant_left = "",
	slant_left_thin = "",
	slant_right = "",
	slant_right_thin = "",
	slant_left_2 = "",
	slant_left_2_thin = "",
	slant_right_2 = "",
	slant_right_2_thin = "",
	chubby_dot = "●",
	slim_dot = '•',
}

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

-- local mode_colors = {
-- 	["n"] = { "NORMAL", colors.green },
-- 	["no"] = { "N-PENDING", colors.green },
-- 	["i"] = { "INSERT", colors.blue },
-- 	["ic"] = { "INSERT", colors.blue },
-- 	["t"] = { "TERMINAL", colors.blue },
-- 	["v"] = { "VISUAL", colors.purple },
-- 	["V"] = { "V-LINE", colors.purple },
-- 	[""] = { "V-BLOCK", colors.purple },
-- 	["R"] = { "REPLACE", colors.red },
-- 	["Rv"] = { "V-REPLACE", colors.red },
-- 	["s"] = { "SELECT", colors.red },
-- 	["S"] = { "S-LINE", colors.red },
-- 	[""] = { "S-BLOCK", colors.red },
-- 	["c"] = { "COMMAND", colors.green },
-- 	["cv"] = { "COMMAND", colors.green },
-- 	["ce"] = { "COMMAND", colors.green },
-- }

local mode_colors = {
	["n"] = { "N", colors.green },
	["no"] = { "N", colors.green },
	["i"] = { "I", colors.blue },
	["ic"] = { "I", colors.blue },
	["t"] = { "T", colors.blue },
	["v"] = { "V", colors.purple },
	["V"] = { "V-L", colors.purple },
	[""] = { "V-B", colors.purple },
	["R"] = { "R", colors.red },
	["Rv"] = { "V-R", colors.red },
	["s"] = { "S", colors.red },
	["S"] = { "S-L", colors.red },
	[""] = { "S-B", colors.red },
	["c"] = { "C", colors.green },
	["cv"] = { "C", colors.green },
	["ce"] = { "C", colors.green },
}

local shortline = false

-- Initialize the components table
local components = {
	active = {},
	inactive = {},
}

table.insert(components.active, {}) -- (1) left
table.insert(components.active, {}) -- (2) center
table.insert(components.active, {}) -- (3) right

-- global components
local invi_sep = {
	str = " ",
	hl = {
		fg = colors.fg,
		bg = colors.bg
	},
}

-- helpers
local function any_git_changes()
	local gst = b.gitsigns_status_dict -- git stats
	if gst then
		if gst["added"] and gst["added"] > 0 or gst["removed"] and gst["removed"] > 0 or gst["changed"] and gst["changed"] > 0 then
			return true
		end
	end
	return false
end

-- #################### STATUSLINE ->

-- ######## Left

-- vi mode

components.active[1][1] = {
	provider = assets.left_semicircle,
	hl = function()
		return {
			fg = mode_colors[vim.fn.mode()][2],
			bg = colors.bg,
		}
	end,
}

components.active[1][2] = {
	provider = "",
	hl = function()
		return {
			fg = colors.bg,
			bg = mode_colors[vim.fn.mode()][2],
		}
	end,
}

components.active[1][3] = {
  provider = function()
    -- return " " .. mode_colors[vim.fn.mode()][1] .. " "
    return " " .. vim.fn.mode():byte() .. " "
  end,
  hl = function()
    return {
      fg = colors.bg,
      bg = mode_colors[vim.fn.mode()][2],
      style = "bold"
    }
  end
}
-- end vi mode

-- filename
components.active[1][4] = {
	provider = function()
		local filename = vim.fn.expand("%:t")
		local extension = vim.fn.expand("%:e")
		local icon = require("nvim-web-devicons").get_icon(filename, extension)
		if icon == nil then
			icon = ""
		end
    if vim.fn.empty(filename) == 1 then
      return " empty "
    end
    if vim.bo.modifiable then
      if vim.bo.modified then
        filename = filename .. " "
      end
    end
		return " " .. icon .. " " .. filename .. " "
	end,
	-- enabled = shortline or function(winid)
	-- 	return vim.api.nvim_win_get_width(winid) > 70
	-- end,
	hl = {
		fg = colors.bg,
		bg = colors.fg
	},
  -- left_sep = {
  --   str = assets.left_semicircle,
  --   hl = function()
  --     return {
  --       fg = colors.fg,
  --       bg = mode_colors[vim.fn.mode()][2]
  --     }
  --   end
  -- },
  right_sep = {
    str = assets.right_semicircle,
    hl = {
      fg = colors.fg,
      bg = colors.bg
    }
  }
}

-- components.active[1][5] = {
--   provider = 'file_size',
-- 	hl = {
-- 		fg = colors.bg,
-- 		bg = colors.fg
-- 	},
--   right_sep = {
--     str = assets.right_semicircle,
--     hl = {
--       fg = colors.fg,
--       bg = colors.bg
--     }
--   }
-- }
-- end filename

-- ######## right

-- diffs
components.active[3][1] = {
  provider = 'git_diff_added',
  hl = {
    fg = colors.green,
    bg = colors.bg
  },
	icon = "  "
}

components.active[3][2] = {
  provider = 'git_diff_changed',
  hl = {
    fg = colors.yellow,
    bg = colors.bg
  },
	icon = "  ",
}

components.active[3][3] = {
  provider = 'git_diff_removed',
  hl = {
    fg = colors.red,
    bg = colors.bg
  },
	icon = "  "
}

components.active[3][4] = {
  provider = " ",
  hl = {
    bg = colors.bg
  }
}

components.active[3][5] = {
  provider = 'git_branch',
  hl = {
    fg = colors.middlegrey,
    bg = colors.section_bg
  },
  icon = "  ",
  left_sep = {
    str = assets.left_semicircle,
    hl = {
      fg = colors.section_bg,
      bg = colors.bg
    }
  },
  right_sep = {
    str = " ",
    hl = {
      bg = colors.section_bg
    }
  }
}
-- end diffs


-- cursor position
components.active[3][6] = {
  provider = 'position',
  hl = {
    fg = colors.bg,
    bg = colors.blue
  },
  left_sep = {
    str = " ",
    hl = {
      bg = colors.blue
    }
  },
  right_sep = {
    str = assets.right_semicircle,
    hl = {
      fg = colors.blue,
      bg = colors.bg
    }
  }
}
-- end cursor position

feline.setup({
	colors = {
		bg = colors.bg,
		fg = colors.fg,
	},
	components = components,
})
