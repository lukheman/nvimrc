-- Utilities for creating configurations
local util = require("formatter.util")

local function prettier(parser)
  if not parser then
    return {
      -- npx prettier --write
      exe = "npx prettier",
      args = {
        "--stdin-filepath",
        util.escape_path(util.get_current_buffer_file_path()),
      },
      stdin = true,
      try_node_modules = true,
    }
  end

  return {
    exe = "prettier",
    args = {
      "--stdin-filepath",
      util.escape_path(util.get_current_buffer_file_path()),
      "--parser",
      parser,
    },
    stdin = true,
    try_node_modules = true,
  }
end

-- Provides the Format and FormatWrite commands
require("formatter").setup({
	-- Enable or disable logging
	logging = false,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
		-- Formatter configurations for filetype "lua" go here
		-- and will be executed in order
		lua = {
			-- "formatter.filetypes.lua" defines default configurations for the
			-- "lua" filetype
			require("formatter.filetypes.lua").stylua,

			-- You can also define your own configuration
			function()
				-- Supports conditional formatting
				if util.get_current_buffer_file_name() == "special.lua" then
					return nil
				end

				-- Full specification of configurations is down below and in Vim help
				-- files
				return {
					exe = "stylua",
					args = {
						"--search-parent-directories",
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--",
						"-",
					},
					stdin = true,
				}
			end,
		},

		html = {
      prettier
		},
    vue = {
      prettier
    },

		-- Use the special "*" filetype for defining formatter configurations on
		-- any filetype
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any
			-- filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

-- keymap
vim.keymap.set("n", "<leader>f", "<cmd>Format<cr>")
vim.keymap.set("v", "<leader>f", "<cmd>Format<cr>")
