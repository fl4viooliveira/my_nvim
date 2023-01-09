local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- return require('packer').startup(function(use)

packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { "nvim-telescope/telescope-file-browser.nvim" }

   -- Themes
    use 'folke/tokyonight.nvim'
    use "ellisonleao/gruvbox.nvim"

    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/playground'

    use 'mbbill/undotree'

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }


    -- --------------------------

    use 'wakatime/vim-wakatime' -- Dashboards for developers

    use 'nvim-tree/nvim-web-devicons'

    use {"folke/trouble.nvim", cmd = "TroubleToggle"}


    use {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
                RGB = true, -- #RGB hex codes
                RRGGBB = true, -- #RRGGBB hex codes
                RRGGBBAA = true, -- #RRGGBBAA hex codes
                rgb_fn = true, -- CSS rgb() and rgba() functions
                hsl_fn = true, -- CSS hsl() and hsla() functions
                css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
                css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
            })
        end,
    }

    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    use 'folke/zen-mode.nvim'

    use "tpope/vim-liquid" -- Liquid plugin

    use {
        "folke/todo-comments.nvim",
        event = "BufRead",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup()
        end,
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use 'onsails/lspkind.nvim'

    use "lukas-reineke/indent-blankline.nvim"

    use "RRethy/vim-illuminate"

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })


    use 'neovim/nvim-lspconfig'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'MunifTanjim/prettier.nvim'

    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }

    use 'tamago324/nlsp-settings.nvim'

    use 'rcarriga/nvim-notify'

    use 'projekt0n/github-nvim-theme'

    use 'junegunn/gv.vim'
    
    use "mattn/emmet-vim" -- Emmet (Ctrl+y ,)


end)
