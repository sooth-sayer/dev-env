require'nvim-treesitter.config'.setup {
    ensure_installed = {"kotlin"},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
