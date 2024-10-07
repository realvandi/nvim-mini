-- Mason configuration for LSP capabilities, formatting, code help, actions, nvim-cmp, etc.
require('mason').setup()
require('mason-lspconfig').setup({
  -- Automatically install these LSPs (add more if needed)
  ensure_installed = {
  },

  -- Automatically set up all installed LSPs with nvim-lspconfig
  handlers = { function(server_name)
    local capabilities = require('cmp_nvim_lsp').default_capabilities()     -- nvim-cmp capabilities
    require('lspconfig')[server_name].setup({
      capabilities = capabilities,                                          -- Automatically enable nvim-cmp completions
      on_attach = function(client, bufnr)
        local opts = { buffer = bufnr, remap = false }
        -- Key mappings for LSP features
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.hover() end, opts)
        -- LSP signature help plugin setup
        require('lsp_signature').on_attach({
          bind = true,                                    -- This is mandatory, else border config won't work
          handler_opts = { border = "rounded" }           -- Optional, to style the popup
        }, bufnr)
      end,
    })
  end },
})
