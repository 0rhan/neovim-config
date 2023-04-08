require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "pyright",
    "clangd",
    "nil_ls",
    "cssls",
    "cssmodules_ls",
    "dockerls",
    "docker_compose_language_service",
    "html",
    "jsonls",
    "jdtls",
    "tsserver",
    "sqlls",
    "taplo",
    "lemminx",
    "yamlls",
    "bashls",
  },
  automatic_installation = true,
})
