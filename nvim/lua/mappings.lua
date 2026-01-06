require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<C-Right>', ':bprev<CR>', { desc = 'previous buffer' })
vim.keymap.set('n', '<C-Left>', ':bnext<CR>', { desc = 'next buffer' })

local function smart_bufclose()
  local buffers = vim.fn.getbufinfo({ buflisted = 1 })
  if #buffers > 1 then
    vim.cmd('bd')
  else
    print("Cannot close buffer: only one window left")
  end
end

vim.keymap.set('n', '<C-w>', smart_bufclose, { desc = 'close current buffer if > 1 buffer exists' })
