return {
	"adalessa/laravel.nvim",
	dependencies = {
		"tpope/vim-dotenv",
		"MunifTanjim/nui.nvim",
		-- {
		-- 	"ccaglak/larago.nvim",
		-- 	init = function()
		-- 		vim.keymap.set("n", "<leader>gg", "<cmd>GoBlade<cr>")
		-- 	end,
		-- },
	},
	cmd = { "Laravel" },
	keys = {
		{ "<leader>la", ":Laravel artisan<cr>" },
		{ "<leader>lr", ":Laravel routes<cr>" },
		{ "<leader>lm", ":Laravel related<cr>" },
	},
	event = { "VeryLazy" },
	opts = {},
	config = true,
}
