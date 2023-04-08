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

-- Trouble
map("n", "<leader>xx", "<cmd>TroubleToggle<cr>", options)
map("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", options)
map("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", options)
map("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", options)
map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", options)
map("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", options)
