-- Leader key spacebar
vim.g.mapleader = " "

-- Explorer remap
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Terminal mode escape
vim.api.nvim_set_keymap('t', '<ESC>', '<C-\\><C-n>', { noremap = true })

-- Trey_bastian's Keymaps
-- Tab magic
vim.api.nvim_set_keymap("v", "<Tab>", ">gv", { noremap = true })
vim.api.nvim_set_keymap("v", "<S-Tab>", "<gv", { noremap = true })
vim.api.nvim_set_keymap("n", "<Tab>", "v><C-\\><C-N>", { noremap = tr })
vim.api.nvim_set_keymap("n", "<S-Tab>", "v<<C-\\><C-N>", { noremap = true })
vim.api.nvim_set_keymap("i", "<S-Tab>", "<C-\\><C-N>v<<C-\\><C-N>^i", { noremap = true })

--Search and replace current word in normal mode, gc
vim.api.nvim_set_keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left>]], { noremap = true })

-- Remap to open diagnostics in a floating window
vim.api.nvim_set_keymap('n', '<leader>e', ':lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })

-- Remap to set location list with diagnostics
vim.api.nvim_set_keymap('n', '<leader>q', ':lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })

-- Set Alt (Option) + Shift + F to format using LSP
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, { noremap = true, silent = true })

-- Set a command for autoformat
vim.cmd("command! Format lua vim.lsp.buf.format()")

-- Remap jump table mappings to default
vim.api.nvim_set_keymap('n', '<C-i>', '<C-i>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-o>', '<C-o>', { noremap = true })
