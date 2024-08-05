local globalOptions = vim.o
local windowOptions = vim.wo
local bufferOptions = vim.bo

globalOptions.hidden = true
globalOptions.mouse = 'a'
-- disable netrw
--globalOptions.loaded_netrw = 1
--globalOptions.loaded_netrwPlugin = 1

bufferOptions.syntax='on'


globalOptions.tabstop = 2
globalOptions.shiftwidth = 2
globalOptions.expandtab = true
bufferOptions.softtabstop = 2
