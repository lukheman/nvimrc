return {
	"willothy/nvim-cokeline",
	lazy = true,
	enabled = true,
	event = { "InsertEnter", "BufReadPost" },
	dependencies = "stevearc/resession.nvim",
	config = function()
		local get_hex = require("cokeline.hlgroups").get_hl_attr

		local green = vim.g.terminal_color_2
		local yellow = vim.g.terminal_color_3

		require("cokeline").setup({
			default_hl = {
				fg = function(buffer)
					return buffer.is_focused and get_hex("Normal", "fg") or get_hex("Comment", "fg")
				end,
				bg = get_hex("ColorColumn", "bg"),
			},

			components = {
				{
					text = " ",
					fg = function(buffer)
						return buffer.is_modified and yellow or green
					end,
				},
				{
					text = function(buffer)
						return buffer.devicon.icon .. " "
					end,
					fg = function(buffer)
						return buffer.devicon.color
					end,
				},
				{
					text = function(buffer)
						return buffer.index .. ": "
					end,
				},
				{
					text = function(buffer)
						return buffer.unique_prefix
					end,
					fg = get_hex("Comment", "fg"),
					italic = true,
				},
				{
					text = function(buffer)
						return buffer.filename .. " "
					end,
					bold = function(buffer)
						return buffer.is_focused
					end,
				},
				{
					text = " ",
				},
			},
		})
		vim.keymap.set("n", "<leader>p", "<Plug>(cokeline-focus-prev)", { silent = true })
		vim.keymap.set("n", "<leader>n", "<Plug>(cokeline-focus-next)", { silent = true })
	end,
}
