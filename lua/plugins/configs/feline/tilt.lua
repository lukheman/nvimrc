local ok, feline = pcall(require, "feline")
if not ok then
	return
end

local bo, fn, call = vim.bo, vim.fn, vim.call

local modes = {
	["n"] = "NORMAL",
	["no"] = "OP    ",
	["nov"] = "OP    ",
	["noV"] = "OP    ",
	["no"] = "OP    ",
	["niI"] = "NORMAL",
	["niR"] = "NORMAL",
	["niV"] = "NORMAL",
	["v"] = "VISUAL",
	["V"] = "LINES ",
	[""] = "BLOCK ",
	["s"] = "SELECT",
	["S"] = "SELECT",
	[""] = "BLOCK ",
	["i"] = "INSERT",
	["ic"] = "INSERT",
	["ix"] = "INSERT",
	["R"] = "REPLACE",
	["Rc"] = "REPLACE",
	["Rv"] = "V-REPLACE",
	["Rx"] = "REPLACE",
	["c"] = "COMMAND",
	["cv"] = "COMMAND",
	["ce"] = "COMMAND",
	["r"] = "ENTER ",
	["rm"] = "MORE  ",
	["r?"] = "CONFIRM",
	["!"] = "SHELL ",
	["t"] = "TERM  ",
	["nt"] = "TERM  ",
	["null"] = "NONE  ",
}

local colors = require("onedark.palette").darker

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

-- Initialize the components table
local components = {
	active = {},
	inactive = {},
}

table.insert(components.active, {}) -- (1) left
table.insert(components.active, {}) -- (2) center
table.insert(components.active, {}) -- (3) right

local function active_left(component)
	table.insert(components.active[1], component)
end

local function active_right(component)
	table.insert(components.active[3], component)
end

-- Insert two sections (left and right) for the inactive statusline
table.insert(components.inactive, {}) -- left
table.insert(components.inactive, {}) -- right

local function inactive_left(component)
	table.insert(components.inactive[1], component)
end

-- separator
local left_sep = {
	str = "",
	hl = {
		fg = colors.bg3,
		bg = colors.bg0,
	},
}
local right_sep = {
	str = "",
	hl = {
		fg = colors.bg3,
		bg = colors.bg0,
	},
}

-- Help functions
local function has_file_type()
	local f_type = vim.bo.filetype
	if not f_type or f_type == "" then
		return false
	end
	return true
end

local function get_icon_full()
	local has_devicons, devicons = pcall(require, "nvim-web-devicons")
	if has_devicons then
		local icon, iconhl = devicons.get_icon(fn.expand("%:t"), fn.expand("%:e"))
		if icon ~= nil then
			return icon, vim.fn.synIDattr(vim.fn.hlID(iconhl), "fg")
		end
	end
end

local function get_icon(padding)
	local icon = select(1, get_icon_full()) or ""
	if not padding then
		return icon
	else
		return icon .. " "
	end
end

local function get_icon_hl()
	return select(2, get_icon_full())
end

------------------
-- Left section --
------------------

-- Vim mode
active_left({
	provider = " ﮧ",
	hl = function()
		return {
			fg = colors.bg1,
			bg = mode_colors[vim.fn.mode()][2],
		}
	end,
})

active_left({
	provider = function()
		return " " .. modes[vim.api.nvim_get_mode().mode] .. " "
	end,
	hl = function()
		return { fg = colors.bg1, bg = mode_colors[vim.fn.mode()][2], style = "bold" }
	end,
	right_sep = {
		str = "",
		hl = function()
			return {
				fg = mode_colors[vim.fn.mode()][2],
			}
		end,
	},
})

-- Git branch
active_left({
	provider = "git_branch",
	left_sep = " ",
	riht_sep = " ",
	hl = { fg = colors.light_grey },
	enabled = "git_info_exists",
	icon = {
		str = "  ",
		hl = { fg = "#f34f29" },
	},
	truncate_hide = true,
})

-------------------
-- Right section --
-------------------

-- Snippet indicator
local luasnip = require('luasnip')
active_right({
  provider = ' ',
  -- hl = { fg = colors.gray },
  enabled = luasnip.in_snippet,
  icon = {
    str ='',
    hl = { fg = colors.fg }
  },
})

-- Filetype
active_right({
	provider = function()
		return " " .. bo.filetype
	end,
	hl = { bg = colors.bg3 },
	enabled = has_file_type,
	icon = function()
		return {
			str = get_icon(),
			hl = { fg = get_icon_hl(), bg = colors.bg3 },
			always_visible = true,
		}
	end,
	left_sep = {
		str = "",
		hl = { fg = colors.bg3 },
	},
	right_sep = right_sep,
	truncate_hide = true,
	priority = 1,
})

-- Cursor line and column
active_right({
	provider = function()
		return string.format("%2d:%-2d", fn.line("."), fn.col("."))
	end,
	short_provider = function()
		return string.format("%d:%-d", fn.line("."), fn.col("."))
	end,
	left_sep = function()
		return {
			str = "",
			hl = {
				fg = mode_colors[vim.fn.mode()][2],
				bg = colors.bg0,
			},
		}
	end,
	right_sep = function()
		return { str = " ", hl = { bg = mode_colors[vim.fn.mode()][2] } }
	end,
	hl = function()
		return { fg = colors.bg1, bg = mode_colors[vim.fn.mode()][2], style = "bold" }
	end,
	icon = " ",
	priority = 9,
})

-- filename
inactive_left({
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
		fg = colors.bg1,
		bg = colors.fg,
	},
	right_sep = {
		str = "",
		hl = {
			fg = colors.fg,
		},
	},
})

feline.setup({ components = components })
