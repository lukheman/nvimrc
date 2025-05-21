return {
	"adalessa/laravel.nvim",
	dependencies = {
		"tpope/vim-dotenv",
		"MunifTanjim/nui.nvim",
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
