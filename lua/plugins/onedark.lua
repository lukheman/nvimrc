return {
	"navarasu/onedark.nvim",
	name = "onedark",
	lazy = false,
	config = function()
		local onedark = require("onedark")

		onedark.setup({
			-- Main options --
			style = "warmer", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
			transparent = false, -- Show/hide background
			term_colors = true, -- Change terminal color as per the selected theme style
			ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
			cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
			-- toggle theme style ---
			toggle_style_key = nil, -- Default keybinding to toggle
			toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

			-- Change code style ---
			-- Options are italic, bold, underline, none
			-- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
			code_style = {
				comments = "none",
				keywords = "none",
				functions = "italic",
				strings = "none",
				variables = "none",
			},

			-- Custom Highlights --
			colors = {
				-- bg0 = "#000000",
			}, -- Override default colors
			highlights = {
				TabLine = { fg = "$fg", bg = "$bg0" },

				-- telescope.nvim
				TelescopeSelection = { bg = "$bg1" },
				TelescopeBorder = { fg = "$orange" },
				TelescopeResultsBorder = { fg = "$fg" },
				TelescopePreviewBorder = { fg = "$fg" },
				TelescopePromptBorder = { fg = "$fg" },

				-- lspsaga
				SagaNormal = { bg = "$bg0" },
				SagaBorder = { fg = "$grey" },

				FloatBorder = { bg = "$bg0" },
				NormalFloat = { bg = "$bg0" },
				Pmenu = { bg = "$bg0" },

				-- which-key
				WhichKeyBorder = { bg = "$bg0", fg = "$fg" },

				-- mini.tabline
				MiniTablineCurrent = { fg = "$fg" },
				MiniTablineHidden = { fg = "$grey" },
			}, -- Override highlight groups

			-- Plugins Config --
			diagnostics = {
				darker = true, -- darker colors for diagnostic
				undercurl = true, -- use undercurl instead of underline for diagnostics
				background = true, -- use background color for virtual text
			},
		})

		onedark.load()
	end,
}
