local ok, cmp = pcall(require, "cmp")

if not ok then return end

cmp.setup({
  completion = { completeopt = 'menu,menuone,noinsert' },
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = string.format(
        " %s",
        require("plugins.configs.completion.lsp.lspkind").icons[vim_item.kind], vim_item.kind
      )

      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        nvim_lua = "[LUA]",
        buffer = "[BUF]",
        luasnip = "[SNP]"
      })[entry.source.name]

      return vim_item
    end,
    fields = { 'kind', 'abbr', 'menu' }
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Down>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<Up>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'luasnip' },
    { name = 'buffer',
      -- option = {
      --   get_bufnrs = function()
      --     return vim.api.nvim_list_bufs()
      --   end
      -- }
    },
    { name = 'path' },
  }
})

cmp.setup.cmdline(':', {
  sources = {
    { name = 'path' },
    { name = 'cmdline' }
  }
})

cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})


-- autopairs
-- insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done())
require("luasnip.loaders.from_vscode").lazy_load()
