function MyColors(color)
  color = color or "tokyonight"
  -- color = color or "gruvbox"

  vim.cmd.colorscheme(color)

  -- require("github-theme").setup({
  --   theme_style = "dimmed",
  --   -- theme_style = "dark",
  --   transparent = true,
  --
  --   function_style = "italic",
  --   comment_style = "italic",
  --   keyword_style = "italic",
  --   variable_style = "italic",
  --   sidebars = {"qf", "vista_kind", "terminal", "packer"},
  --
  --   -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  --   -- colors = {hint = "orange", error = "#ff0000"},
  --
  --   -- -- Overwrite the highlight groups
  --   -- overrides = function(c)
  --     --     return {
  --       --         htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
  --       --         DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
  --       --         -- this will remove the highlight groups
  --       --         TSField = {},
  --       --     }
  --       -- end
  --     })

      -- require("gruvbox").setup({
      --   undercurl = true,
      --   underline = true,
      --   bold = true,
      --   italic = true,
      --   strikethrough = true,
      --   invert_selection = false,
      --   invert_signs = false,
      --   invert_tabline = false,
      --   invert_intend_guides = false,
      --   inverse = true, -- invert background for search, diffs, statuslines and errors
      --   contrast = "hard", -- can be "hard", "soft" or empty string
      --   palette_overrides = {
      --     -- bright_green = "#990000",
      --   },
      --   overrides = {
      --     -- SignColumn = {bg = "#ff9900"} -- specific highlight group
      --   },
      --   dim_inactive = false,
      --   transparent_mode = false,
      -- })


      require("tokyonight").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        light_style = "day", -- The theme is used when the background is set to light
        transparent = true, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = true },
          keywords = { italic = true },
          functions = { italic = true },
          variables = { italic = true },
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "transparent", -- style for sidebars, see below
          floats = "transparent", -- style for floating windows
        },
        sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
        hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = false, -- dims inactive windows
        lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold


        on_highlights = function(hl, c)
          local prompt = "#2d3149"
          hl.TelescopeNormal = {
            bg = c.bg_transparent,
            fg = c.fg_transparent,
          }
          hl.TelescopeBorder = {
            bg = c.bg_transparent,
            fg = c.bg_transparent,
          }
          hl.TelescopePromptNormal = {
            bg = prompt,
          }
          hl.TelescopePromptBorder = {
            bg = prompt,
            fg = prompt,
          }
          hl.TelescopePromptTitle = {
            bg = prompt,
            fg = prompt,
          }
          hl.TelescopePreviewTitle = {
            bg = c.bg_transparent,
            fg = c.bg_transparent,
          }
          hl.TelescopeResultsTitle = {
            bg = c.bg_transparent,
            fg = c.bg_transparent,
          }
        end,

      })

    end

    MyColors()
