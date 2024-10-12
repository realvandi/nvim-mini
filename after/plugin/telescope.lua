local builtin = require('telescope.builtin')

-- Open telescope 
vim.keymap.set('n', '<leader>pf', function()
  require('telescope.builtin').find_files({
    find_command = { "rg", "--ignore", "--hidden", "--files" }
  })
end, { noremap = true, silent = true })

-- Only search through git files(useful for searching through files you actually want to look for, instead of something like node_modules)
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Open Telescope's grep search
vim.keymap.set('n', '<leader>ps',function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)
