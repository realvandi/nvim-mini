-- Welcome to the packer.lua file. This is where you go to install your plugins.
-- The configuration for every plugin can be found in the `after/plugin/[plugin name].lua`(If it is customized).

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer(I mean, you need a plugin manager, right?)
	use 'wbthomason/packer.nvim'

	-- Telescope(A must have, to search through your files, and global searches.)
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Undotree(Essentially a history tree for your local file changes/saves)
	use('mbbill/undotree')

	-- Gud git. A git wrapper so awesome, it should be illegal. Made by the pope himself, tpope.
	use('tpope/vim-fugitive')
end)
