local cmp = require("cmp")
local luasnip = require("luasnip")

local icons = {
	Text = "",
	Method = "",
	Function = "",
	Constructor = "",
	Field = "ﰠ",
	Variable = "",
	Class = "",
	Interface = "",
	Module = "",
	Property = "",
	Unit = "塞",
	Value = "",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "פּ",
	Event = "",
	Operator = "",
	TypeParameter = "",
}

-- local cmp_window = require "cmp.utils.window"
-- cmp_window.info_ = cmp_window.info
-- cmp_window.info = function(self)
--   local info = self:info_()
--   info.scrollable = false
--   return info
-- end

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

cmp.setup({
	completion = { completeopt = "menu,menuone,noselect" },
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	formatting = {
		format = function(entry, vim_item)
			vim_item.kind = string.format("%s", icons[vim_item.kind])

			vim_item.abbr = string.sub(vim_item.abbr, 1, 20)
			return vim_item
		end,
		fields = { "kind", "abbr" },
	},
	window = {
		completion = {
			border = border('CmpItemAbbrMatch'),
			scrollbar = false,
		},
		documentation = {
			border = border('CmpItemAbbrMatch'),
			scrollbar = false,
		},
	},
	mapping = {
		["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		["<C-e>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
		["<Down>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<Up>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	},
	sources = {
		{ name = "nvim_lsp_signature_help" },
		{ name = "nvim_lsp", max_item_count = 5 },
		{ name = "luasnip", max_item_count = 8 },
		{ name = "path" },
		{
			name = "buffer",
			keyword_length = 2,
			max_item_count = 5,
			option = {
				get_bufnrs = function()
					return vim.api.nvim_list_bufs()
				end,
			},
		},
	},
})

cmp.setup.cmdline(":", {
	sources = {
		{ name = "path" },
		{ name = "cmdline", max_item_count = 10 },
	},
})

cmp.setup.cmdline("/", {
	sources = {
		{ name = "buffer" },
	},
})

require("luasnip.loaders.from_vscode").lazy_load()
