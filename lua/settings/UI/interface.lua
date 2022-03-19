local globalOptions = vim.o
local windowOptions = vim.wo
local bufferOptions = vim.bo

globalOptions.background = 'dark'
globalOptions.termguicolors = true
windowOptions.cursorline = true
windowOptions.number = true
windowOptions.list = true
globalOptions.listchars = 'eol:↴,tab:,trail:·,space:·,'


-- [THEME CONFIG] --
vim.g.tokyonight_style = "night"
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

vim.cmd[[colorscheme tokyonight]]
