-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'folke/tokyonight.nvim'

  use {'ryanoasis/vim-devicons', {'kyazdani42/nvim-web-devicons'}}

  use 'romgrk/barbar.nvim'

  use {'kyazdani42/nvim-tree.lua', config = function() require'nvim-tree'.setup {} end}
end)
