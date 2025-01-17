return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	cmd = { "Oil" },
	opts = {},
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	config = function()
		require("oil").setup()
		vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "open parent directory" })
	end,
}
