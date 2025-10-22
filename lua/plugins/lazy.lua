-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({

	{ "nvim-tree/nvim-web-devicons", lazy = true },

	{ "wakatime/vim-wakatime", lazy = false },

	{ "kevinhwang91/promise-async", lazy = false },

	{ "MunifTanjim/nui.nvim", lazy = false },

	-- { "github/copilot.vim" },

	-- require("plugins.onedark"),

	-- require("plugins.kanagawa-paper"),

	require("plugins.spectre"),

	require("plugins.everblush"),

	require("plugins.telescope"),

	require("plugins.sfm"),

	require("plugins.mini-pairs"),

	-- require("plugins.mini-comment"),

	{
		"numToStr/Comment.nvim",
		opts = {
			-- add any options here
		},
	},

	require("plugins.blink-cmp"),

	-- require("plugins.cmp"),

	require("plugins.autosave"),

	require("plugins.treesitter"),

	require("plugins.code_runner"),

	require("plugins.flash"),

	require("plugins.gitsigns"),

	require("plugins.lspsaga"),

	-- require("plugins.mini-tabline"),

	-- require("plugins.codecompanion"),

	require("plugins.neogit"),

	require("plugins.which-key"),

	require("plugins.nvim-surround"),

	-- require("plugins.auto-session"),

	require("plugins.conform"),

	require("plugins.screenkey"),

	require("plugins.yazi"),

	require("plugins.copilot"),

	require("plugins.nvim-ufo"),

	require("plugins.smear-cursor"),

	require("plugins.flutter"),

	require("plugins.laravel"),

	require("plugins.hlchunk"),

	require("plugins.lualine"),

	require("plugins.colorizer"),

	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},

	-- Lua
	{
		"folke/zen-mode.nvim",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},

	{
		"Kicamon/markdown-table-mode.nvim",
		config = function()
			require("markdown-table-mode").setup({
				filetype = {
					"*.md",
				},
				options = {
					insert = true, -- when typing "|"
					insert_leave = true, -- when leaving insert
					pad_separator_line = false, -- add space in separator line
					alig_style = "default", -- default, left, center, right
				},
			})
		end,
	},

	-- For `plugins.lua` users.
	-- {
	-- 	"OXY2DEV/markview.nvim",
	-- 	lazy = false,

	-- For blink.cmp's completion
	-- source
	-- dependencies = {
	--     "saghen/blink.cmp"
	-- },
	-- },

	{
		"MeanderingProgrammer/render-markdown.nvim",
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},

	{
		"m4xshen/hardtime.nvim",
		lazy = false,
		opts = {},
	},

	{
		"hat0uma/csvview.nvim",
		---@module "csvview"
		---@type CsvView.Options
		opts = {
			parser = { comments = { "#", "//" } },
			keymaps = {
				-- Text objects for selecting fields
				textobject_field_inner = { "if", mode = { "o", "x" } },
				textobject_field_outer = { "af", mode = { "o", "x" } },
				-- Excel-like navigation:
				-- Use <Tab> and <S-Tab> to move horizontally between fields.
				-- Use <Enter> and <S-Enter> to move vertically between rows and place the cursor at the end of the field.
				-- Note: In terminals, you may need to enable CSI-u mode to use <S-Tab> and <S-Enter>.
				jump_next_field_end = { "<Tab>", mode = { "n", "v" } },
				jump_prev_field_end = { "<S-Tab>", mode = { "n", "v" } },
				jump_next_row = { "<Enter>", mode = { "n", "v" } },
				jump_prev_row = { "<S-Enter>", mode = { "n", "v" } },
			},
		},
		cmd = { "CsvViewEnable", "CsvViewDisable", "CsvViewToggle" },
	},
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		lazy = false,
	},
})
