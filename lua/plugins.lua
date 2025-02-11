local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  use("folke/tokyonight.nvim")

  use("L3MON4D3/LuaSnip")

  use({ "ryanoasis/vim-devicons", { "kyazdani42/nvim-web-devicons" } })

  use("romgrk/barbar.nvim")

  use({
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup({})
    end,
  })

  use("petertriho/nvim-scrollbar")
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
  })

  use("folke/trouble.nvim")

  use({
    "lewis6991/gitsigns.nvim",
  })

  use({ "akinsho/toggleterm.nvim", tag = "*" })

  use("mhartington/formatter.nvim")

  use("lukas-reineke/indent-blankline.nvim")

  use("mfussenegger/nvim-dap")

  use("rcarriga/nvim-notify")

  use("folke/todo-comments.nvim")

  use("simrat39/symbols-outline.nvim")

  use("esensar/nvim-dev-container")

  --LSP
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use("nvim-treesitter/nvim-treesitter-context")
  use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "onsails/lspkind.nvim",
  })

  --CMP
  use({
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "davidsierradz/cmp-conventionalcommits",
    "ray-x/cmp-treesitter",
  })

  use("windwp/nvim-autopairs")

  use({
    "akinsho/flutter-tools.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
  })

  use("wakatime/vim-wakatime")

  if packer_bootstrap then
    require("packer").sync()
  end
end)

--TODO: Replace packer with lazy
--TODO: Install dropbar
