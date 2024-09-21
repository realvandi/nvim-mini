local builtin = require('telescope.builtin')

-- Open telescope 
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Only serach through git files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Open Telescope's grep search
vim.keymap.set('n', '<leader>ps',function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)
