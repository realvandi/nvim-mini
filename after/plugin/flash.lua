-- Flash configuration files.
local flash = require("flash")

vim.keymap.set("n", "s", function() flash.jump() end, { desc = "Flash" })
vim.keymap.set("x", "s", function() flash.jump() end, { desc = "Flash" })
vim.keymap.set("o", "s", function() flash.jump() end, { desc = "Flash" })

vim.keymap.set("o", "r", function() flash.remote() end, { desc = "Remote Flash" })

vim.keymap.set("o", "R", function() flash.treesitter_search() end, { desc = "Treesitter Search" })
vim.keymap.set("x", "R", function() flash.treesitter_search() end, { desc = "Treesitter Search" })

vim.keymap.set("c", "<c-s>", function() flash.toggle() end, { desc = "Toggle Flash Search" })
