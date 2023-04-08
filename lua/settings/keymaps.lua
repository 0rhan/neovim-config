local map = vim.api.nvim_set_keymap
options = { noremap = true }
vim.g.mapleader = "\\"

map("n", "<C-n>", ":NvimTreeToggle<CR>", options)
map("n", "<leader>r", "NvimTreeRefresh<CR>", options)

-- Formatter plugin
map("n", "<C-f>", ":Format<CR>", options)
map("n", "<leader>F", ":FormatWrite<CR>", options)

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", options)
map("n", "<leader>fg", ":Telescope live_grep<CR>", options)
map("n", "<leader>fb", ":Telescope buffers<CR>", options)
map("n", "<leader>fh", ":Telescope help_tags<CR>", options)
