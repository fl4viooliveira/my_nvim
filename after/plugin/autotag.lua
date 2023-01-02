require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
    filetypes = {"liquid" , "html" , "xml" },
  }
}

require('nvim-ts-autotag').setup({
  filetypes = {"liquid" , "html" , "xml" },
})
