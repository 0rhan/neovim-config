vim.opt.list = true
vim.opt.listchars:append("space:·")
vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("tab:")
vim.opt.listchars:append("trail:·")

require("ibl").setup({
  indent = { char = "│" },
})
