local cmp = require("cmp")
-- local luasnip = require("luasnip")

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
			-- luasnip.lsp_expand(args.body)
			vim.fn["vsnip#anonymous"](args.body)
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
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif vim.fn["vsnip#available"](1) == 1 then
				feedkeys("<Plug>(vsnip-expand-or-jump)", "")
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif vim.fn["vsnip#jumpable"](-1) == 1 then
				feedkeys("<Plug>(vsnip-jump-prev)", "")
			else
				fallback()
			end
		end, { "i", "s" }),
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "vsnip" },
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
