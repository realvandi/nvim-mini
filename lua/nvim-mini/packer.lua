-- Welcome to the packer.lua file. This is where you go to install your plugins.
-- The configuration for every plugin can be found in the `after/plugin/[plugin name].lua`(If it is customized).
-- Note: The plugins are listed by order of which are most important, to least important to me. Nonetheless, the list of plugins should be minimal either way.

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer(I mean, you need a plugin manager, right?)
	use 'wbthomason/packer.nvim'

	-- Telescope(A must have, to search through your files, and global searches.)
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    -- Folke's Flash, a quick way to navigate around your code. Feel like a kangaroo!
    -- Customized configuration in flash.lua. Hotkey is "s" to go into "Flash mode", and then start typing away! 
    use {"folke/flash.nvim"}

	-- Nvim surround. A must have to be able to enclose, or de-close(is that a word?) stuff quickly.
	-- "tag = *" Use for stability; omit to use `main` branch for the latest features
	use({"kylechui/nvim-surround",tag = "*"})

	-- Fugitive. Gud git. A git wrapper so awesome, it should be illegal. Made by the pope himself, tpope.
	use('tpope/vim-fugitive')

	-- Undotree(Essentially a history tree for your local file changes/saves)
	use('mbbill/undotree')

    -- Color schemes. Use :color mgz(dark mode) or :color rose-pine-dawn(light mode) to switch the color schemes.
    -- Default is set to mgz(dark mode) in set.lua.
    use { "rose-pine/neovim" }
    use { 'stankovictab/mgz.nvim' }

end )
