return {
	"MarcHamamji/runner.nvim",
	enabled = false,
	config = function()
		local runner = require("runner")

		local choice = require("runner.handlers.helpers").choice
		local helpers = require("runner.handlers.helpers")
		local command_handler = require("runner.handlers.helpers").command_handler

		runner.setup({
			position = "bottom",
			height = 12,
			handlers = {
				rust = choice({
					["Build"] = helpers.shell_handler("cargo build"),
					["Run"] = helpers.shell_handler("cargo run"),
				}),
				cpp = command_handler("!g++ % -o script.out && ./script.out"),
				lua = command_handler("luafile %"),
			},
		})

		vim.keymap.set("n", "rn", "<cmd>Runner<cr>")
	end,
}
