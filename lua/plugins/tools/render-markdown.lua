return {
	"MeanderingProgrammer/render-markdown.nvim",
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {},
	ft = { "markdown", "codecompanion" },
	config = function()
		require("render-markdown").enable()
	end,
}
