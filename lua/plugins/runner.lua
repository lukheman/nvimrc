require("runner").setup({})

local choice = require("runner.handlers.helpers").choice
local helpers = require("runner.handlers.helpers")

require("runner").set_handler(
	"rust",
	choice({
		["Build"] = helpers.shell_handler("cargo build"),
		["Run"] = helpers.shell_handler("cargo run"),
		-- ["Test"] = helpers.shell_handler("cargo test"),
		-- ["Custom"] = helpers.shell_handler("cargo ", true),
	})
)

vim.keymap.set("n", "rn", "<cmd>Runner<cr>")
