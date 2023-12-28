require("auto-save").setup({
	trigger_events = { -- See :h events
		immediate_save = { "BufLeave", "FocusLost" }, -- vim events that trigger an immediate save
		defer_save = { "InsertLeave", "TextChanged" }, -- vim events that trigger a deferred save (saves after `debounce_delay`)
		cancel_defered_save = { "InsertEnter", "ModeChanged" }, -- vim events that cancel a pending deferred save
	},
	noautocmd = true,
	debounce_delay = 500,
})
