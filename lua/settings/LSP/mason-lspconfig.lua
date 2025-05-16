require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "cmake",
    "lua_ls",
    "basedpyright",
    "clangd",
    "zls",
    "rust_analyzer",
    "rnix",
    "cssls",
    "cssmodules_ls",
    "dockerls",
    "docker_compose_language_service",
    "html",
    "jsonls",
    "jdtls",
    "ts_ls",
    "sqlls",
    "taplo",
    "lemminx",
    "yamlls",
    "bashls",
    "dockerls"
  },
  
  automatic_installation = true,
})
