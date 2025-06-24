return {
	"hrsh7th/nvim-cmp",
	event = { "InsertEnter", "CmdLineEnter" },
	dependencies = {
		{ "hrsh7th/cmp-nvim-lsp", lazy = true },
		{ "hrsh7th/cmp-buffer", lazy = true },
		{ "hrsh7th/cmp-path", lazy = true },
		{ "hrsh7th/cmp-cmdline", lazy = true },
		{ "saadparwaiz1/cmp_luasnip", lazy = true },
		{
			"L3MON4D3/LuaSnip",
			-- follow latest release.
			version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
			-- install jsregexp (optional!).
			-- build = "make install_jsregexp",
			dependencies = { "rafamadriz/friendly-snippets" },
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
		},
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		-- local cmp_autopairs = require("nvim-autopairs.completion.cmp")

		-- insert `(` after select function or method item

		-- local cmp_window = require "cmp.utils.window"
		-- cmp_window.info_ = cmp_window.info
		-- cmp_window.info = function(self)
		--   local info = self:info_()
		--   info.scrollable = false
		--   return info
		-- end

		local has_words_before = function()
			unpack = unpack or table.unpack
			local line, col = unpack(vim.api.nvim_win_get_cursor(0))
			return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
		end

		local function border(hl_name)
			return {
				{ "╭", hl_name },
				{ "─", hl_name },
				{ "╮", hl_name },
				{ "│", hl_name },
				{ "╯", hl_name },
				{ "─", hl_name },
				{ "╰", hl_name },
				{ "│", hl_name },
			}
		end

		local function feedkeys(key, mode)
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
		end

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,noselect",
				autocomplete = { cmp.TriggerEvent.TextChanged },
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			-- formatting = {
			-- 	format = function(entry, vim_item)
			-- 		vim_item.kind = string.format("%s", icons[vim_item.kind])
			--
			-- 		vim_item.abbr = string.sub(vim_item.abbr, 1, 20)
			-- 		return vim_item
			-- 	end,
			-- 	fields = { "kind", "abbr" },
			-- },
			window = {
				completion = {
					-- border = border("CmpItemAbbrMatch"),
					scrollbar = false,
				},
				documentation = {
					-- border = border("CmpItemAbbrMatch"),
					-- winhighlight = "Normal:Pmenu,CursorLine:CmpCompletionSel,Search:None",
					scrollbar = true,
				},
			},
			mapping = {
				["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
				["<C-e>"] = cmp.mapping({
					i = cmp.mapping.abort(),
					c = cmp.mapping.close(),
				}),

				["<CR>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						if luasnip.expandable() then
							luasnip.expand()
						else
							cmp.confirm({
								select = true,
							})
						end
					else
						fallback()
					end
				end),

				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.locally_jumpable(1) then
						luasnip.jump(1)
					else
						fallback()
					end
				end, { "i", "s" }),

				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.locally_jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),
			},
			sources = {
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "path" },
				{
					name = "buffer",
					keyword_length = 2,
					option = {
						get_bufnrs = function()
							return vim.api.nvim_list_bufs()
						end,
					},
				},
			},
			experimental = {
				ghost_text = false,
			},
		})

		-- cmp.setup.cmdline(":", {
		-- 	sources = {
		-- 		{ name = "path" },
		-- 		{ name = "cmdline", max_item_count = 10 },
		-- 	},
		-- })

		cmp.setup.cmdline({ "/", "?" }, {
			sources = {
				{ name = "buffer" },
			},
		})

		-- cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
