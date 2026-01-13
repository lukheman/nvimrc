return {
	"olimorris/codecompanion.nvim",
	config = function()
		require("codecompanion").setup({
			adapters = {
				gemini = function()
					-- return require("codecompanion.adapters").extend("gemini", {
					-- 	env = {
					-- 		api_key = "AIzaSyAvetJ5eoxXSXL9OAHAj-9icjw5dxQ5l5E",
					-- 	},
					-- })
				end,
			},
			display = {
				chat = {
					-- Change the default icons
					icons = {
						buffer_pin = " ",
						buffer_watch = "👀 ",
					},

					-- Alter the sizing of the debug window
					debug_window = {
						---@return number|fun(): number
						width = vim.o.columns - 5,
						---@return number|fun(): number
						height = vim.o.lines - 2,
					},

					-- Options to customize the UI of the chat buffer
					window = {
						layout = "vertical", -- float|vertical|horizontal|buffer
						position = nil, -- left|right|top|bottom (nil will default depending on vim.opt.splitright|vim.opt.splitbelow)
						border = "single",
						height = 0.8,
						width = 0.3,
						relative = "editor",
						full_height = true, -- when set to false, vsplit will be used to open the chat buffer vs. botright/topleft vsplit
						sticky = false, -- when set to true and `layout` is not `"buffer"`, the chat buffer will remain opened when switching tabs
						opts = {
							breakindent = true,
							cursorcolumn = false,
							cursorline = false,
							foldcolumn = "0",
							linebreak = true,
							list = false,
							numberwidth = 1,
							signcolumn = "no",
							spell = false,
							wrap = true,
						},
					},

					---Customize how tokens are displayed
					---@param tokens number
					---@param adapter CodeCompanion.Adapter
					---@return string
					token_count = function(tokens, adapter)
						return " (" .. tokens .. " tokens)"
					end,
				},
			},
			strategies = {
				chat = {
					adapter = "copilot",
				},
				inline = {
					adapter = "copilot",
				},
			},
			prompt_library = {
				["Commit Bahasa Indonesia"] = {
					strategy = "chat",
					description = "custom prompt untuk generate conventional commit dengan bahasa indonesia",
					opts = {
						index = 10,
						is_default = true,
						is_slash_cmd = true,
						short_name = "commit_indo", --->> ini short name nya
						auto_submit = true,
					},
					prompts = {
						-- {
						-- 	role = "system",
						-- 	content = "You are an experienced developer with Lua and Neovim",
						-- },
						{
							role = "user",
							content = function()
								return string.format(
									[[Sbagai ahli dalam spesifikasi Conventional Commits, buatlah satu pesan commit dalam bahasa Indonesia berdasarkan git diff berikut. Pastikan hanya pesan commit yang diberikan, tanpa teks pembuka, penutup, atau penjelasan lainnya. Dan pastikan juga tidak ada karakter seperti backtick pada awal pesan commit yang dapat membuat pesan commit tidak rapih.


                   ```diff
                   %s
                   ```
                   ]],
									vim.fn.system("git diff --no-ext-diff --staged")
								)
							end,
							opts = {
								contains_code = true,
							},
						},
					},
				},
			},
		})
		vim.keymap.set(
			{ "n", "v" },
			"<leader>cm",
			"<cmd>CodeCompanion /commit_indo<cr>",
			{ noremap = false, silent = false }
		)
	end,
}
