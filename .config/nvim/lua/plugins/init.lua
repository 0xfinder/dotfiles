-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'folke/tokyonight.nvim'

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- IDE stuff
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt=true} }
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- File tree
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Stuff
  use {'windwp/nvim-ts-autotag'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-autopairs'}

  -- Keybinds
  use 'folke/which-key.nvim'

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Collecttion of common configurations for the Nvim LSP client
  use 'neovim/nvim-lspconfig'

  -- LSP completion source for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'

  -- Other useful completion sources
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Snippet completion source for nvim-cmp
  use 'hrsh7th/cmp-vsnip'

  -- Snippet engine
  use 'hrsh7th/vim-vsnip'

  -- Discord RPC
  use 'andweeb/presence.nvim'

  -- LSP kind
  use 'onsails/lspkind.nvim'

  -- Terminal
  use 'akinsho/toggleterm.nvim'
end)
