local map = vim.api.nvim_set_keymap
options = { noremap = true }
vim.g.mapleader = "\\"

map("n", "<C-n>", ":NvimTreeToggle<CR>", options)
map("n", "<leader>r", "NvimTreeRefresh<CR>", options)

-- Formatter plugin
map("n", "<C-f>", ":Format<CR>", options)
map("n", "<leader>F", ":FormatWrite<CR>", options)
