-- Plugins
-- Configure plugins, plugin specific functions and autocommands are to be
-- written in the corresponding files (makes debuging and trying out plugins easier)

local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local run_sync = false

-- Install packer for package management, if missing
if (fn.empty(fn.glob(install_path)) > 0) then
  run_sync = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  vim.cmd('packadd packer.nvim')
end

return require( "packer" ).startup( function( use )
  use "wbthomason/packer.nvim"        -- | Plugin Manager

  -- Language Tools --------------------------------------------------
  use "neovim/nvim-lspconfig"         -- | Default config for NeoVim lsp

  use "hrsh7th/cmp-nvim-lsp"          -- | LSP source for nvim-cmp
  use "hrsh7th/cmp-buffer"            -- | In buffer completion
  use "hrsh7th/cmp-path"              -- | Path comp
  use "hrsh7th/cmp-cmdline"           -- | Command line comp
  use "hrsh7th/nvim-cmp"              -- | Autocompletion plugin

  use "L3MON4D3/LuaSnip"              -- | Snippets plugin
  use "saadparwaiz1/cmp_luasnip"      -- | Snippets source for nvim-cmp

--  use "arkt8/nim.vim"                 -- | Syntax highlight for Nim
  use "alaviss/nim.nvim"
  use "jakwings/vim-terra"            -- | Support for terralang

  -- Interface & Colorschemes ----------------------------------------
  use "nvim-lualine/lualine.nvim"     -- | Status line
  use "morhetz/gruvbox"
  use "whatyouhide/vim-gotham"
  use "dracula/vim"
  use "jacoborus/tender"
  use "nanotech/jellybeans.vim"
  use "drewtempelmeyer/palenight.vim"
  use "catppuccin/nvim"
  use "kwsp/halcyon-neovim"
  use "lucastrvsn/kikwis"
  use "Shatur/neovim-ayu"
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  -- use "MunifTanjim/nui.nvim"
  -- use {
  -- "nvim-neo-tree/neo-tree.nvim",
  --   branch = "v2.*",
  --   requires = {
  --     "nvim-lua/plenary.nvim",
  --     "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
  --     "MunifTanjim/nui.nvim",
  --   }
  -- }
  use {
  'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Tools -----------------------------------------------------------
  use "nvim-telescope/telescope.nvim" -- | Fuzzy finder
  use "nvim-lua/plenary.nvim"         -- | Dependenty for telescope

end )


