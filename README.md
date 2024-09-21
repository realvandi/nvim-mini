Steps to installing Nvim-Mini

Throughout this README, any text that is typed as such in angle brackets(e.g. <Enter>) means that it's a keystroke. In the example mentioned, <Enter> means the enter key.

Prerequisites:
Install nvim
Install ripgrep(optional)

1. Clone this repository.
    MacOS(should work in general with Linux as well):
    1a. Ensure that this repo's folder is named "nvim"(rename it, if it's not)
    1b. Ensure that the aforementioned "nvim" folder is located within ~/.config/
        1b.a. The directory should look like ~/.config/nvim(this is the repo folder)

2. Install a plugin manager by executing the following command(anywhere will do):
`git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

Note: The plugin manager that's being used in this nvim configuration is _packer_.

3. Go to the file `lua/nvim-mini/packer.lua` and type `:so<Enter>` to source the _packer_ file.
*This is where you'd go to install your plugins if you need any more plugins.*

4. Do `:PackerSync<Enter>` to see if _packer_ was successfully installed, along with all the plugins.

*If you've installed a plugin and would like to customize the plugin, you can navigate to `after/plugin/[plugin name].lua`*. An example out of this repo is `after/plugin/telescope.lua`.



