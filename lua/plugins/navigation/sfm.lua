return {
	"dinhhuy258/sfm.nvim",
	dependencies = {
		{ "dinhhuy258/sfm-telescope.nvim" },
		{ "julihermes/sfm-focus.nvim" },
	},
	keys = "<C-n>",
	config = function()
		local sfm = require("sfm").setup({
			view = {
				side = "left", -- side of the tree, can be `left`, `right`. this setting will be ignored if view.float.enable is set to true,
				width = 40, -- this setting will be ignored if view.float.enable is set to true,
				float = {
					enable = false,
					config = {
						relative = "editor",
						border = "rounded",
						width = 30, -- int or function
						height = 30, -- int or function
						row = 1, -- int or function
						col = 1, -- int or function
					},
				},
				selection_render_method = "highlight", -- render method of selected entries, can be `icon`, `sign`, `highlight`.
			},
			mappings = {
				search = { "/" },
				custom_only = false,
				list = {
					-- user mappings go here
				},
			},
			renderer = {
				icons = {
					file = {
						default = "",
						symlink = "",
					},
					folder = {
						default = "",
						open = "",
						symlink = "",
						symlink_open = "",
					},
					indicator = {
						folder_closed = "", -- 
						folder_open = "", -- 
						file = "",
					},
					selection = "",
				},
			},
			file_nesting = {
				enabled = false,
				expand = false,
				patterns = {},
			},
			misc = {
				trash_cmd = nil,
				system_open_cmd = nil,
			},
		})
		sfm:load_extension("sfm-telescope")
		sfm:load_extension("sfm-focus")

		vim.keymap.set("n", "<C-n>", "<cmd>SFMToggle<cr>")
	end,
}
