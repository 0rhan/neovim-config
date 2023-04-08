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
require('settings.UI.indent_blankline')
require('settings.UI.telescope')

-- LSP
require("settings.LSP.mason-lspconfig")
require("settings.LSP.lspconfig")
require("settings.CMP.nvim_cmp")
require("settings.LSP.treesitter")
require("settings.LSP.treesitter_context")

-- Flutter
require("settings.flutter_tools")
