# Dylan's Nvim-Mini
## A Minimal Nvim Configuration
## @author Dylan Alvandi


## Prerequisites:
Install nvim
Install ripgrep(optional) - For Telescope grep searches
Recommended terminal: iTerm 

## Steps to installing Nvim-Mini

Throughout this README, any text that is typed as such in angle brackets(e.g. <Enter>) means that it's a keystroke. In the example mentioned, <Enter> means the enter key.

1. Clone this repository.
    MacOS(should work in general with Linux as well):
    1a. Ensure that this repo's folder is named "nvim"(rename it, if it's not)
    1b. Ensure that the aforementioned "nvim" folder is located within ~/.config/
        1b.a. The directory should look like `~/.config/nvim`(this is the repo folder)

2. Install a plugin manager by executing the following command(anywhere will do):
`git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

Note: The plugin manager that's being used in this nvim configuration is _packer_.

3. Go to the file `lua/nvim-mini/packer.lua` and type `:so<Enter>` to source the _packer_ file.
*This is where you'd go to install your plugins if you need any more plugins.*

4. Do `:PackerSync<Enter>` to see if _packer_ was successfully installed, along with all the plugins.

*If you've installed a plugin and would like to customize/view the plugin configurations(such as remaps for the plugins), you can navigate to `after/plugin/[plugin name].lua`*. An example out of this repo is `after/plugin/telescope.lua`.

    4a. To install new plugins, simply paste the installation line you've found from the plugin's repository in the `packer.lua` file, and do `:so<Enter>` followed by `:PackerSync<Enter>` to install the plugins. Check if you'll need to make an extra file to set up the plugin in the `after/plugin` directory.

5. Do `:Mason` in order to call up the LSP package manager. Add languages as per your need. 

Notes:
-After installing a new plugin, do steps 3 and 4. Then proceed to restart nvim. (quit and open again)

## Nvim-Mini Quick-Start

There are a lot of remaps with this nvim configuration, but these should help you get started:
Note from Dylan: If it's your first time using nvim, you can change ANY of these keymaps, remaps, and customize them to your heart's content. The only hurdle is figuring out where to find them :). I hope the section that came before this came across clear enough. 

### Leader key 
Spacebar

What is the leader key? In nvim, you can do combination of keystrokes in order to call a function, or do something within nvim, like call up Telescope. The leader key is the key that comes before the combination of keys. In the default installation of this configuration, the leader key is spacebar. 

Here's a quick example: The remap for calling Telescope(your "file search") is "<leader>pf", which means that you're supposed to press spacebar, followed by p, and then f. That should call Telescope.

### Remaps

<leader>pf - telescope
<leader>ps - telescope grep(you'll need to install ripgrep for this as well, simple installation, just do `brew install ripgrep`)
<leader>f - format or (:Format)
:Git - Git overlay(fugitive)
<leader>u - undotree
:NERDTree - file tree
<leader>s - change a word 
<leader>pv - netrw(nvim file explorer)
<leader>e - diagnostics window
<leader>q - location list diagnostics
s in normal mode - flash 

That's it! That covers the most important remaps I've made in this installation. 

## Nvim-Mini Plugin List

Basics
- Packer (plugin manager)
- Treesitter (syntax highlighting)
- Mason (LSP)
- nvim-cmp (autocomplete)
- nvim-surround
- Telescope
- folke/Flash
- Undotree
- Fugitive

Optionals
- nvim-autopair(optional)
- NERDTree
- nvim-ts-autotag

## Plugin Recommendations

There are several plugins which did not make it into the configuration here, but it doesn't mean that they're not great! I just figured I'd try to make something that was as minimal as possible. Here's some of my recommendations for some extra plugins you could try out:

- Cheatsheet
- Lualine
- Dashboard
- More themes!
- Harpoon

## Themes

This nvim configuration only comes out of the box with 2 themes: My personal preference for a dark theme, and a light theme. 

- rose-pine(light)
- mgz(dark)

Set the color theme of the nvim configuration through 

`:color mgz` or `:color rose-pine-dawn`

<!--TODO-->
Notes: 
-Explain why `:h rtp` is important
