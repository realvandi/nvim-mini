-- Mason configuration for LSP capabilities, formatting, code help, actions, etc.
require('mason').setup()
require('mason-lspconfig').setup({

    -- Always installed LSPs go here
    ensure_installed = {},

    handlers = { function(server_name)
        require('lspconfig')[server_name].setup({
            on_attach = function(client, bufnr)
                local opts = { buffer = bufnr, remap = false }
                -- Key mappings for LSP features
                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
                vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
                vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
                vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
            end,
        })
    end },
})
