return {
	"dinhhuy258/sfm.nvim",

	keys = { "<c-n>" },

	config = function()
		require("sfm").setup()

		vim.keymap.set("n", "<c-n>", "<cmd>SFMToggle<cr>")
	end,
}
