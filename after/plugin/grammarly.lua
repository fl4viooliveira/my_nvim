require'lspconfig'.grammarly.setup{
    cmd= { "grammarly-languageserver", "--stdio" },
    filetypes = {'markdown'},
    single_file_support = true,
}
