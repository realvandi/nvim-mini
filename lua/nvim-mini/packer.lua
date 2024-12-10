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
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Treesitter, a language parser for syntax highlighting. Use this unless you're a god.
  -- run = :TSUpdate is so TreeSitter updates
  -- To add more languages to always be installed on treesitter, navigate to the treesitter.lua file, and add the languages you will need. The list of available languages is available on treesitter's GitHub page.
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  -- Nvim LSP Config
  use 'neovim/nvim-lspconfig'

  -- Mason - Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters.
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" } -- Bridges Mason with LSP config

  -- Nvim-cmp - Autocomplete - connected to LSP
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',     -- LSP source for nvim-cmp
      'hrsh7th/cmp-buffer',       -- Buffer completions
      'hrsh7th/cmp-path',         -- File path completions
      'hrsh7th/cmp-cmdline',      -- Command-line completions
      'L3MON4D3/LuaSnip',         -- Snippet engine
      'saadparwaiz1/cmp_luasnip', -- Snippet completions
    }
  }

  -- Folke's Flash, a quick way to navigate around your code. Feel like a kangaroo!
  -- Customized configuration in flash.lua. Hotkey is "s" to go into "Flash mode", and then start typing away!
  use { "folke/flash.nvim" }

  -- Nvim surround. A must have to be able to enclose, or de-close(is that a word?) stuff quickly.
  -- "tag = *" Use for stability; omit to use `main` branch for the latest features
  use({ "kylechui/nvim-surround", tag = "*" })

  -- Fugitive. Gud git. A git wrapper so awesome, it should be illegal. Made by the pope himself, tpope.
  use('tpope/vim-fugitive')

  -- Undotree(Essentially a history tree for your local file changes/saves)
  use('mbbill/undotree')

  -- LSP signatures on the go in insert mode
  use {
    "ray-x/lsp_signature.nvim",
  }

  -- Color schemes. Use :color mgz(dark mode) or :color rose-pine-dawn(light mode) to switch the color schemes.
  -- Default is set to mgz(dark mode) in set.lua.
  use { "rose-pine/neovim" }
  use { 'stankovictab/mgz.nvim' }
  use { "xero/miasma.nvim" }

  -- ================================================================================
  --[OPTIONAL PLUGINS DOWN BELOW, COMMENT OUT OR DELETE TO DISABLE THEM, AND THEN :so, FOLLOWED BY :PackerSync]
  -- ================================================================================

  -- File tree explorer. QOL improvement.
  -- Toggle on using :NERDTree
  -- use { 'preservim/nerdtree' }

  -- File tree explorer. QOL improvement.
  -- Toggle on suing :Neotree
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }

  -- Automatically pairs your brackets, quotation marks, etc. QOL improvement.
  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }

  -- Folke's todo comments
  use {
    "folke/todo-comments.nvim",
    config = function()
      require('todo-comments').setup({})
    end,
    requires = { "nvim-lua/plenary.nvim" }
  }

  -- Autotag for Web Development
  use({
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup({
        opts = {
          -- Defaults
          enable_close = true,          -- Auto close tags
          enable_rename = true,         -- Auto rename pairs of tags
          enable_close_on_slash = false -- Auto close on trailing </
        },
        -- Also override individual filetype configs, these take priority.
        -- Empty by default, useful if one of the "opts" global settings
        -- doesn't work well in a specific filetype
        per_filetype = {
          ["html"] = {
            enable_close = false
          }
        }
      })
    end
  })

  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup({})
    end,
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
end)
