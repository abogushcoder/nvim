require("alex.core.options")
require("alex.core.keymaps")
vim.api.nvim_set_keymap('t', 'jk', '<C-\\><C-n>', { noremap = true, silent = true })
-- DeleteAndClose (dac)
vim.api.nvim_create_user_command('Dac', function()
  vim.cmd('!rm %') -- Remove the file
  vim.cmd('bd!')   -- Close the buffer without asking
  vim.cmd('quit')  -- quit neovim
end, {})
