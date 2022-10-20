-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- ensure that packer is installed
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

-- Only required if you have packer configured as `opt`
vim.cmd('packadd packer.nvim')

local packer = require 'packer'
local util = require 'packer.util'

packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

--- startup and add configure plugins
packer.startup(function()
  local use = use

  -- plugin manager
  use 'wbthomason/packer.nvim'

  -- treesiiter and language package
  use 'nvim-treesitter/nvim-treesitter'
  use 'sheerun/vim-polyglot'

  -- lsp configurations
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'folke/neodev.nvim'

  -- telescope realted
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- harpoon to fix some files
  use 'ThePrimeagen/harpoon'

  -- floating terminl
  use 'numToStr/FTerm.nvim'

  -- git related
  use 'TimUntersberger/neogit'

  -- formatting tools
  use 'dhruvasagar/vim-table-mode'

  -- color theme
  use 'folke/tokyonight.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }

  --statusline
  use 'nvim-lualine/lualine.nvim'

  -- icons
  use {
    'kyazdani42/nvim-web-devicons',
    opt = true
  }

end
)
