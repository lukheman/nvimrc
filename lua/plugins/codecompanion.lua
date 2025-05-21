return {
	"olimorris/codecompanion.nvim",
	config = function()
		require("codecompanion").setup({
			adapters = {
				gemini = function()
					return require("codecompanion.adapters").extend("gemini", {
						env = {
							api_key = "AIzaSyAvetJ5eoxXSXL9OAHAj-9icjw5dxQ5l5E",
						},
					})
				end,
			},
			display = {
				action_palette = {
					width = 95,
					height = 10,
					prompt = "Prompt ", -- Prompt used for interactive LLM calls
					provider = "default", -- default|telescope|mini_pick
					opts = {
						show_default_actions = true, -- Show the default actions in the action palette?
						show_default_prompt_library = true, -- Show the default prompt library in the action palette?
					},
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
									[[You are an expert at following the Conventional Commit specification. Given the git diff listed below, please generate a commit message for me in bahasa indonesia:


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
