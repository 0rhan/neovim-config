-- Utilities for creating configurations
local util = require("formatter.util")

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
    lua = {
      -- "formatter.filetypes.lua" defines default configurations for the
      -- "lua" filetype
      require("formatter.filetypes.lua").stylua,
    },
    python = {
      require("formatter.filetypes.python").black,
    },
    nix = {
      require("formatter.filetypes.nix").nixfmt,
    },
    dart = {
      require("formatter.filetypes.dart").dartformat,
    },
    c = {
      require("formatter.filetypes.c").clangformat,
    },
    css = {
      require("formatter.filetypes.css").prettier,
    },
    html = {
      require("formatter.filetypes.html").prettier,
    },
    java = {
      require("formatter.filetypes.java").clangformat,
    },
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").prettier,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettier,
    },
    json = {
      require("formatter.filetypes.json").prettier,
    },
    sh = {
      require("formatter.filetypes.sh").shfmt,
    },
    sql = {
      require("formatter.filetypes.sql").pgformat,
    },
    toml = {
      require("formatter.filetypes.toml").taplo,
    },
    yaml = {
      require("formatter.filetypes.yaml").prettier,
    },
  },
})
