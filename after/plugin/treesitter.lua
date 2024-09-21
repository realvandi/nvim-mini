-- Treesitter configuration. 
require'nvim-treesitter.configs'.setup {
    -- A list of parsers to ALWAYS be installed, available parsers are documented in treesitter's github page. If a parser is not mentioned here, and auto_install is turned on, treesitter will attempt to download a parser for the file currently in the buffer.
    ensure_installed = { "typescript", "python", "rust", "c", "lua", "java" },

    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    auto_install = true,

    -- List of parsers to ignore installing
    ignore_install = {},

    indent = {
        disable = {},
        enable = true,
    },

    highlight = {
        disable = {},
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
