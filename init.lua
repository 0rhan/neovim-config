-- Core
require("plugins")
require("settings.keymaps")
require("settings.editor")
require("settings.formatter")
require("settings.autopairs")


--UI
require("settings.UI.scrollbar")
require("settings.UI.interface")
require("settings.UI.tabline")
require("settings.UI.file_explorer")
require("settings.UI.toggleterm")
require("settings.UI.indent_blankline")
require("settings.UI.telescope")
require("settings.UI.trouble")
require("settings.UI.gitsigns")
require("settings.UI.symbols_outline")

-- LSP
require("settings.LSP.mason-lspconfig")
require("settings.LSP.lspconfig")
require("settings.CMP.nvim_cmp")
require("settings.LSP.treesitter")
require("settings.LSP.treesitter_context")

-- Flutter
require("settings.flutter_tools")
