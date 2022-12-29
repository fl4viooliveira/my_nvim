
local status, telescope = pcall(require, "telescope")

if (not status) then return end
local actions = require("telescope.actions")


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


local function telescope_buffer_dir()
    return vim.fn.expand('%:p:h')
end
-- ------------------
-- You don't need to set any of these options.
-- IMPORTANT!: this is only a showcase of how you can set default options!
-- require("telescope").setup {

    telescope.setup {

        defaults = {
            mappings = {
                n = {
                    ["q"] = actions.close
                },
            },
        },
        extensions = {
            file_browser = {
                theme = "dropdown",
                -- disables netrw and use telescope-file-browser in its place
                hijack_netrw = true,
                mappings = {
                    ["i"] = {
                        -- your custom insert mode mappings
                    },
                    ["n"] = {
                        -- your custom normal mode mappings
                    },
                },
            },
        },
    }
    -- To get telescope-file-browser loaded and working with telescope,
    -- you need to call load_extension, somewhere after setup function:
    -- require("telescope").load_extension "file_browser"

    telescope.load_extension("file_browser")

    vim.keymap.set('n', ';f',
    function()
        builtin.find_files({
            no_ignore = false,
            hidden = true
        })
    end)
    vim.keymap.set('n', ';r', function()
        builtin.live_grep()
    end)
    vim.keymap.set('n', '\\\\', function()
        builtin.buffers()
    end)
    vim.keymap.set('n', ';t', function()
        builtin.help_tags()
    end)
    vim.keymap.set('n', ';;', function()
        builtin.resume()
    end)
    vim.keymap.set('n', ';e', function()
        builtin.diagnostics()
    end)
    vim.keymap.set("n", "sf", function()
        telescope.extensions.file_browser.file_browser({
            path = "%:p:h",
            cwd = telescope_buffer_dir(),
            respect_gitignore = false,
            hidden = true,
            grouped = true,
            previewer = false,
            initial_mode = "normal",
            layout_config = { height = 40 }
        })
    end)
