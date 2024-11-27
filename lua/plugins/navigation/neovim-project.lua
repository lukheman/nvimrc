return {
	"coffebar/neovim-project",
	opts = {
		projects = { -- define project roots
			"~/Code/*",
			"~/.config/nvim/",
			"~/.config/fish/",
		},
		picker = {
			type = "telescope", -- or "fzf-lua"
		},
	},
	init = function()
		-- enable saving the state of plugins in the session
		vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.

		vim.keymap.set("n", "<leader><space>", "<cmd>NeovimProjectDiscover<cr>")
	end,
	dependencies = {
		{ "Shatur/neovim-session-manager" },
	},
	lazy = false,
	priority = 100,
}
