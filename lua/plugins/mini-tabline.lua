return {
	"echasnovski/mini.tabline",
	version = "*",
	event = "BufReadPost",
	-- No need to copy this inside `setup()`. Will be used automatically.
	opts = {
		-- Whether to show file icons (requires 'mini.icons')
		show_icons = true,

		-- Function which formats the tab label
		-- By default surrounds with space and possibly prepends with icon
		format = nil,

		-- Whether to set Vim's settings for tabline (make it always shown and
		-- allow hidden buffers)
		set_vim_settings = true,

		-- Where to show tabpage section in case of multiple vim tabpages.
		-- One of 'left', 'right', 'none'.
		tabpage_section = "left",
	},
}
