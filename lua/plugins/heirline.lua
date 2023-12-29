local conditions = require("heirline.conditions")
local utils = require("heirline.utils")

local colors = require("onedark.palette").darker

-- Statusline --
----------------
local Align = { provider = "%=" }
local Separator = { provider = " " }

local separators = {
	rounded_left = "",
	rounded_right = "",
	rounded_left_hollow = "",
	rounded_right_hollow = "",
	powerline_left = "",
	powerline_right = "",
	powerline_right_hollow = "",
	powerline_left_hollow = "",
	slant_left = "",
	slant_right = "",
	inverted_slant_left = "",
	inverted_slant_right = "",
	slant_ur = "",
	slant_br = "",
	vert = "│",
	vert_thick = "┃",
	block = "█",
	double_vert = "║",
	dotted_vert = "┊",
}

local ViMode = {
	init = function(self)
		self.mode = vim.fn.mode(1)
	end,
	static = {
		-- mode_names = {
		-- 	n = "NORMAL",
		-- 	i = "INSERT",
		-- 	v = "VISUAL",
		-- 	V = "VISUAL-L",
		-- 	R = "REPLC",
		-- 	c = "CMD",
		-- 	t = "TERM",
  --     s = "SELECT",
  --     S = "SELECT-L"
		-- },
		mode_names = {
			n = " N ",
			i = " I ",
			v = " V ",
			V = " VL",
			R = " R ",
			c = " C ",
			t = " T ",
      s = " S ",
      S = " SL"
		},
		mode_colors = {
			n = "green",
			i = "blue",
			v = "cyan",
			V = "cyan",
			c = "orange",
			R = "orange",
			t = "red",
      s = "cyan",
      S = "cyan"
		},
	},
	provider = function(self)
		local mode = self.mode:sub(1, 1) -- get only the first mode character
		return "  " -- "  "
		-- return " " .. self.mode_names[mode] .. " " -- "  "
	end,
	hl = function(self)
		local mode = self.mode:sub(1, 1) -- get only the first mode character
		return { fg = "bg1", bg = self.mode_colors[mode], bold = true }
	end,
	update = {
		"ModeChanged",
	},
}

local Git = {
	condition = conditions.is_git_repo,
	init = function(self)
		self.status_dict = vim.b.gitsigns_status_dict
		self.has_changes = self.status_dict.added ~= 0 or self.status_dict.removed ~= 0 or self.status_dict.changed ~= 0
	end,
	hl = { fg = "cyan" },
	{
		-- git branch name
		provider = function(self)
			return "  " .. self.status_dict.head
		end,
	},
	Align,
	{
		provider = function(self)
			local count = self.status_dict.added or 0
			return count > 0 and (" " .. count)
		end,
		hl = { fg = "green" },
	},
	{
		provider = function(self)
			local count = self.status_dict.removed or 0
			return count > 0 and (" " .. count)
		end,
		hl = { fg = "orange" },
	},
	{
		provider = function(self)
			local count = self.status_dict.changed or 0
			return count > 0 and (" " .. count)
		end,
		hl = { fg = "red" },
	},
}

local FileIcon = {
	init = function(self)
		self.filename = vim.api.nvim_buf_get_name(0)
		local extension = vim.fn.fnamemodify(self.filename, ":e")
		self.icon, self.icon_color =
			require("nvim-web-devicons").get_icon_color(self.filename, extension, { default = true })
	end,
	provider = function(self)
		if self.filename == "" then
			return ""
		end
		return self.icon
	end,
	hl = function(self)
		return { fg = self.icon_color, bold = false }
	end,
}

local FileType = {
	init = function(self)
		self.filename = vim.fn.expand("%:t")
	end,
	provider = function(self)
		if vim.fn.empty(self.filename) == 1 then
			return ""
		end
		return vim.bo.filetype .. " "
	end,
	hl = { fg = "light_grey" },
}

local FileModifer = {
	condition = function()
		return vim.bo.modified
	end,
	provider = "",
	hl = { fg = "cyan", bold = true, force = true },
}

local Ruler = {
	-- %l = current line number
	-- %L = number of lines in the buffer
	-- %c = column number
	-- %P = percentage through file of displayed window
	{
		provider = separators.rounded_left,
		hl = { fg = "green" },
	},
	{
		provider = "  %c ",
		hl = { fg = "bg1", bg = "green" },
	},
}

local Statusline = {
	hl = { bg = "bg2" },
	ViMode,
	Git,
	Align,
	FileType,
	FileIcon,
	Separator,
	Ruler,
}

require("heirline").setup({
	statusline = Statusline,
	opts = {
		colors = colors,
	},
})
