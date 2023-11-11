local cokeline = require("cokeline")
local get_hex = require('cokeline.hlgroups').get_hl_attr

local colors = require("onedark.palette").darker

cokeline.setup({
	default_hl = {
		fg = function(buffer)
			return buffer.is_focused and get_hex("Normal", "fg") or get_hex("Comment", "fg")
		end,
		bg = "NONE",
	},
	sidebar = {
		filetype = "NvimTree",
		components = {
			{
				text = "  File Manager",
				style = "bold",
			},
		},
	},
	components = {
		{
			text = function(buffer)
				return (buffer.index ~= 1) and "" or ""
			end,
			fg = get_hex("Normal", "fg"),
		},
		{
			text = function(buffer)
				return " " .. buffer.devicon.icon
			end,
			fg = function(buffer)
				return buffer.devicon.color
			end,
		},
		{
			text = function(buffer)
				return buffer.unique_prefix
			end,
		},
		{
			text = function(buffer)
				return buffer.filename .. " "
			end,
			-- style = function(buffer)
			-- 	return buffer.is_focused and "italic" or nil
			-- end,
		},
		{
			text = function(buffer)
				return buffer.is_modified and "" or " "
			end,
			fg = function(buffer)
				return buffer.is_modified and colors.green or nil
			end,
			delete_buffer_on_left_click = false,
		},
		{
			text = "",
		},
	},
})
