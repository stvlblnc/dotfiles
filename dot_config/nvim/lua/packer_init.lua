 -- Plugin manager configuration file
 
 -- Automatically install packer
 local fn = vim.fn
 local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

 if fn.empty(fn.glob(install_path)) > 0 then
   packer_bootstrap = fn.system({
     "git",
     "clone",
     "--depth",
     "1",
     "https://github.com/wbthomason/packer.nvim",
     install_path
   })
   vim.o.runtimepath = fn.stdpath("data") .. "/site/pack/*/start/*," .. vim.o.runtimepath
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Install plugins
return packer.startup(function(use)
  use "wbthomason/packer.nvim"

  use 'EdenEast/nightfox.nvim'
  use 'NLKNguyen/papercolor-theme'
  use 'altercation/vim-colors-solarized'
  use 'ayu-theme/ayu-vim'
  use 'drewtempelmeyer/palenight.vim'
  use 'mcchrish/zenbones.nvim'
  use 'morhetz/gruvbox'
  use 'rakr/vim-one'
  use 'sainnhe/gruvbox-material'
  use 'Everblush/nvim'

  use 'nvim-lualine/lualine.nvim'

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup{}
    end
    }

    -- Clojure editing/development
    -- use 'prabirshrestha/asyncomplete.vim'
    -- use 'thecontinium/asyncomplete-conjure.vim'
  use 'clojure-vim/vim-jack-in'
  use('Olical/conjure', {tag = 'v4.22.1'})
use 'guns/vim-sexp'
use 'tpope/vim-sexp-mappings-for-regular-people'

-- Job control
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'

-- git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

-- Text Objects
Plug 'Julian/vim-textobj-variable-segment'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'sgur/vim-textobj-parameter'
Plug 'kana/vim-textobj-user'

-- QOL
Plug 'christoomey/vim-sort-motion'
Plug 'frazrepo/vim-rainbow'
Plug 'kylechui/nvim-surround'
Plug 'mileszs/ack.vim'
Plug 'simnalamburt/vim-mundo'
Plug 'numToStr/Comment.nvim'
Plug 'rizzatti/dash.vim'
Plug 'tpope/vim-unimpaired'
Plug 'windwp/nvim-autopairs'
-- Plug 'vim-scripts/ReplaceWithRegister'

-- Treesitter
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

-- Fuzzy selection
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug('nvim-telescope/telescope-fzf-native.nvim', {['do'] = 'make' })

-- utilities
Plug 'rktjmp/lush.nvim'
Plug 'tpope/vim-repeat'
