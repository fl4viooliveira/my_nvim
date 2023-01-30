vim.g.mapleader = " "

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

-- :unmap <Alt-3>
-- :unmap <Alt-3> Esc
-- :unmap <press Alt-3>
-- :unmap <press Alt-3> Esc
--
-- :map  <A-3> #
-- :map! <A-3> #
-- :map  <A-"> #
-- :map! <A-"> #
-- :set timeout timeoutlen=5000 ttimeoutlen=250

