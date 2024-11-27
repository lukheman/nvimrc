return {
	"CRAG666/code_runner.nvim",
	config = function()
		require("code_runner").setup({
			mode = "term",

			better_term = { -- Toggle mode replacement
				clean = false, -- Clean terminal before launch
				number = 10, -- Use nil for dynamic number and set init
				init = nil,
			},
			filetype = {
				python = "python3",
				rust = "cargo run",
				cpp = {
					"cd $dir &&",
					"g++ -o script $fileName && ./script",
				},
				c = "gcc -o script $fileName && ./script",
			},
		})
		vim.keymap.set("n", "rn", ":RunCode<CR>", { noremap = true, silent = false })
	end,
}
