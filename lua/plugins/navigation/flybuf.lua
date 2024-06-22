local options = {}

options.config = function()
	require("flybuf").setup({
		quit = "<esc>",
	})
	vim.keymap.set("n", "<leader>b", "<cmd>FlyBuf<cr>")
end

return {
	"glepnir/flybuf.nvim",
	command = "<leader>b",
	config = options.config,
}
