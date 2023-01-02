require'lspconfig'.theme_check.setup{
        cmd = { "theme-check-language-server", "--stdio" },
    filetypes = { "liquid" },
    root_dir = function(fname)
        return vim.loop.cwd()
      end,
    settings = {}

}
