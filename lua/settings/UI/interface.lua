local globalOptions = vim.o
local windowOptions = vim.wo
local bufferOptions = vim.bo

globalOptions.background = "dark"
globalOptions.termguicolors = true
windowOptions.cursorline = true
windowOptions.number = true
windowOptions.list = true
globalOptions.listchars = "eol:↴,tab:,trail:·,space:·,"
vim.o.updatetime = 250

local signs = {
  Error = "",
  Warn = "",
  Hint = "",
  Info = "󰋼",
}

-- [DIAGNOSTICS]
vim.diagnostic.config({
  virtual_text = {
    prefix = "●", -- Could be '●', '▎', 'x'
  },
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = false,
})

vim.api.nvim_create_autocmd("CursorHold", {
  buffer = bufnr,
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      border = "rounded",
      source = "always",
      prefix = " ",
      scope = "cursor",
    }
    vim.diagnostic.open_float(nil, opts)
  end,
})

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- [THEME CONFIG] --
vim.g.tokyonight_style = "night"
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

vim.cmd([[colorscheme tokyonight]])
