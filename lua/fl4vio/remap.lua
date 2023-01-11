vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "<leader>gv", vim.cmd.GV)

vim.keymap.set("n", "<leader>sp", vim.cmd.spe)


-- Spell Check function
local function vim_opt_toggle(opt, on, off, name)
  local message = name
  if vim.opt[opt]:get() == off then
    vim.opt[opt] = on
    message = message .. " Enabled"
  else
   vim.opt[opt] = off
    message = message .. " Disabled"
  end
  vim.notify(message)
end
vim.keymap.set("n", "<leader>s", function()
  vim_opt_toggle("spell", true, false, "Spelling")
end)
