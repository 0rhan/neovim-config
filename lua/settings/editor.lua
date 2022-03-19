local globalOptions = vim.o
local windowOptions = vim.wo
local bufferOptions = vim.bo

globalOptions.hidden = true
globalOptions.mouse = 'a'

-- buffer options
bufferOptions.syntax='on'
bufferOptions.ts = 2
bufferOptions.sw = 2
bufferOptions.et = true
