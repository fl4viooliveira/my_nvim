local vim = vim
local os = require"os"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.clipboard = 'unnamedplus'

vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

-- vim.opt.spell = true
vim.opt.spelllang = "en"

vim.g.indentLine_char = "┆"
vim.g.indentLine_bgcolor_gui = '#20222b'
vim.g.indentLine_color_gui = '#A4E57E'

vim.opt.shell = "zsh"

vim.g.conceallevel = 0 -- so that `` is visible in markdown files
vim.g.vim_json_syntax_conceal = 0
vim.opt.fileencoding = "utf-8" -- the encoding written to a file

