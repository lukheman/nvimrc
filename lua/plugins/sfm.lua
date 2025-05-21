return {
	"dinhhuy258/sfm.nvim",

	keys = { "<c-n>" },
	dependencies = {
		{ "dinhhuy258/sfm-telescope.nvim" },
	},
	config = function()
		local sfm = require("sfm").setup()

		sfm:load_extension("sfm-telescope")

		vim.keymap.set("n", "<c-n>", "<cmd>SFMToggle<cr>")
	end,
}
