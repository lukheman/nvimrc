return {
	"CRAG666/code_runner.nvim",
	keys = "<leader>rr",
	config = function()
		require("code_runner").setup({
			mode = "term",

			better_term = { -- Toggle mode replacement
				clean = false, -- Clean terminal before launch
				number = nil, -- Use nil for dynamic number and set init
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
				asm = {
					"nasm -f elf64 -o output.o $fileName &&",
					"ld -o output output.o &&",
					"./output",
				},
				typescript = "npx tsc",
				php = "php $fileName",
			},
		})

		vim.keymap.set("n", "<leader>rr", "<cmd>RunCode<cr>", { noremap = true, silent = false })
	end,
}
