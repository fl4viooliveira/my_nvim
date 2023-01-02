function MyColors(color)
    -- color = color or "tokyonight"
    color = color or "gruvbox"

    vim.cmd.colorscheme(color)

    require("github-theme").setup({
        theme_style = "dimmed",
        -- theme_style = "dark",
        transparent = true,

        function_style = "italic",
        comment_style = "italic",
        keyword_style = "italic",
        variable_style = "italic",
        sidebars = {"qf", "vista_kind", "terminal", "packer"},

        -- Change the "hint" color to the "orange" color, and make the "error" color bright red
        colors = {hint = "orange", error = "#ff0000"},

        -- Overwrite the highlight groups
        overrides = function(c)
            return {
                htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
                DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
                -- this will remove the highlight groups
                TSField = {},
            }
        end
    })

    require("gruvbox").setup({
        undercurl = true,
        underline = true,
        bold = true,
        italic = true,
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {
            -- bright_green = "#990000",
        },
        overrides = {
            -- SignColumn = {bg = "#ff9900"} -- specific highlight group
        },
        dim_inactive = false,
        transparent_mode = false,
    })



end

MyColors()
