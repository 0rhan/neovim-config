local builtin = require("telescope.builtin")
local map = vim.api.nvim_set_keymap
options = { noremap = true }
vim.g.mapleader = "\\"

map("n", "<C-n>", ":NvimTreeToggle<CR>", options)
map("n", "<leader>r", "NvimTreeRefresh<CR>", options)
map("n", "<C-f>", ":/", options)

-- Formatter plugin
map("n", "<S-f>", ":Format<CR>", options)
map("n", "<leader>F", ":FormatWrite<CR>", options)

-- Telescope
vim.keymap.set("n", "<leader>ff", builtin.find_files, options)
vim.keymap.set("n", "<leader>fg", builtin.live_grep, options)
vim.keymap.set("n", "<leader>fb", builtin.buffers, options)
vim.keymap.set("n", "<leader>fh", builtin.help_tags, options)

-- Trouble
map("n", "<leader>xx", "<cmd>TroubleToggle<cr>", options)
map("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", options)
map("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", options)
map("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", options)
map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", options)
map("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", options)

-- TODO: Install plugin for keymap managment
