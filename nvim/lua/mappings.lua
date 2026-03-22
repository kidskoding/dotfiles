require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local builtin = require("telescope.builtin")
map("n", "<C-f>", builtin.find_files, {})
map("n", "<leader>fg", builtin.live_grep, {})
map("n", "<leader>fb", builtin.buffers, {})
map("n", "<leader>fh", builtin.help_tags, {})

map("n", "<C-Left>", ":bprev<CR>", { desc = "previous buffer" })
map("n", "<C-Right>", ":bnext<CR>", { desc = "next buffer" })

local function smart_bufclose()
  local buffers = vim.fn.getbufinfo({ buflisted = 1 })
  if #buffers > 1 then
    vim.cmd("bd")
  else
    print("Cannot close buffer: only one window left")
  end
end

map("n", "<C-w>", smart_bufclose, { desc = "close current buffer if > 1 buffer exists" })
