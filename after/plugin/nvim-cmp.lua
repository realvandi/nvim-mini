-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users
    end,
  },
  mapping = {
        -- Insert your custom mappings for autocomplete here
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },   -- LSP completions
    { name = 'luasnip' },    -- Snippet completions
  }, {
    { name = 'buffer' },     -- Buffer completions
  })
})

-- Use buffer source for `/` (search)
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (command line)
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})
