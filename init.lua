-- Core
require('plugins')
require('settings.keymaps')
require('settings.editor')
require('settings.formatter')

--UI
require('settings.UI.scrollbar')
require('settings.UI.interface')
require('settings.UI.tabline')
require('settings.UI.file_explorer')
require('settings.UI.toggleterm')

-- LSP
require("settings.LSP.mason-lspconfig")
require("settings.LSP.lspconfig")
require("settings.CMP.nvim_cmp")
require("settings.LSP.treesitter")

-- Flutter
require("settings.flutter_tools")
