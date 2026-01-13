return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	enabled = true,
	config = function()
		-- Custom components
		local function macro_recording()
			local reg = vim.fn.reg_recording()
			if reg ~= "" then
				return "󰑋 @" .. reg
			end
			return ""
		end

		local function lsp_status()
			local clients = vim.lsp.get_clients({ bufnr = 0 })
			if #clients == 0 then
				return ""
			end
			local names = {}
			for _, client in ipairs(clients) do
				table.insert(names, client.name)
			end
			return " " .. table.concat(names, ", ")
		end

		local function search_count()
			if vim.v.hlsearch == 0 then
				return ""
			end
			local ok, result = pcall(vim.fn.searchcount, { maxcount = 999 })
			if not ok or result.total == 0 then
				return ""
			end
			return string.format(" %d/%d", result.current, result.total)
		end

		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = { "NvimTree", "neo-tree", "dashboard", "alpha" },
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = true,
				refresh = {
					statusline = 100,
					tabline = 100,
					winbar = 100,
				},
			},
			sections = {
				lualine_a = {
					{
						"mode",
						fmt = function(str)
							local mode_map = {
								["NORMAL"] = "",
								["INSERT"] = "",
								["VISUAL"] = "󰈈",
								["V-LINE"] = "󰈈",
								["V-BLOCK"] = "󰈈",
								["COMMAND"] = "",
								["REPLACE"] = "",
								["TERMINAL"] = "",
							}
							return mode_map[str] or str:sub(1, 1)
						end,
						padding = { left = 1, right = 1 },
					},
				},
				lualine_b = {
					{ "branch", icon = "" },
					{
						"diff",
						symbols = { added = " ", modified = " ", removed = " " },
						colored = true,
					},
				},
				lualine_c = {
					{ macro_recording, color = { fg = "#ff9e64" } },
					{
						"filename",
						path = 1,
						symbols = {
							modified = " ●",
							readonly = " ",
							unnamed = "[No Name]",
							newfile = " [New]",
						},
					},
					{ search_count, color = { fg = "#7dcfff" } },
				},
				lualine_x = {
					{
						"diagnostics",
						sources = { "nvim_diagnostic" },
						symbols = { error = " ", warn = " ", info = " ", hint = "󰌵 " },
						colored = true,
						update_in_insert = false,
					},
					{ lsp_status, color = { fg = "#9ece6a" } },
				},
				lualine_y = {
					{ "filetype", icon_only = false, padding = { left = 1, right = 1 } },
					{ "encoding", fmt = string.upper },
					{
						"fileformat",
						symbols = { unix = "", dos = "", mac = "" },
					},
				},
				lualine_z = {
					{ "progress", padding = { left = 1, right = 0 } },
					{ "location", padding = { left = 0, right = 1 } },
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { { "filename", path = 1 } },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = { "nvim-tree", "neo-tree", "lazy", "mason", "quickfix", "fugitive" },
		})
	end,
}