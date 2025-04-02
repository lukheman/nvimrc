return {
	"olimorris/codecompanion.nvim",
	disale = true,
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
		})
		vim.keymap.set(
			{ "n", "v" },
			"<LocalLeader>cm",
			"<cmd>CodeCompanion /commit<cr>",
			{ noremap = false, silent = false }
		)
	end,
}
