local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  vim.o.runtimepath = fn.stdpath("data") .. "/site/pack/*/start/*," .. vim.o.runtimepath
end

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return packer.startup(function(use)
  use("wbthomason/packer.nvim")
  use("nvim-lua/popup.nvim")
  use("nvim-lua/plenary.nvim")

  -- themes, look&feel
  use("EdenEast/nightfox.nvim")
  use("NLKNguyen/papercolor-theme")
  use("altercation/vim-colors-solarized")
  use("ayu-theme/ayu-vim")
  use("drewtempelmeyer/palenight.vim")
  use("mcchrish/zenbones.nvim")
  use("morhetz/gruvbox")
  use("rakr/vim-one")
  use("sainnhe/gruvbox-material")
  use({"Everblush/nvim", as = 'everblush'})

  -- status line
  use("nvim-lualine/lualine.nvim")

  -- autocomplete
  use("hrsh7th/nvim-cmp")
  use("saadparwaiz1/cmp_luasnip")
  use("hrsh7th/cmp-buffer")
  -- use "hrsh7th/cmp-path"
  -- use "hrsh7th/cmp-cmdline"
  use("hrsh7th/cmp-nvim-lua")
  use("hrsh7th/cmp-nvim-lsp")
  use("PaterJason/cmp-conjure")

  -- snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  -- use "rafamadriz/friendly-snippets"  -- a bunch of snippets to use

  -- LSP
  use("neovim/nvim-lspconfig") -- enable LSP
  use("williamboman/mason.nvim") -- simple to use language server installer
  use("williamboman/mason-lspconfig.nvim") -- simple to use language server installer
  -- use {"glepnir/lspsage.nvim", branch = "main"}

  -- formatting and printing
  use("jose-elias-alvarez/null-ls.nvim")
  use("jayp0521/mason-null-ls.nvim")

  -- Treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })

  -- Fuzzy selection
  use({
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
  })
  use({
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
  })

  -- Autopairs
  use("windwp/nvim-autopairs")

  -- File manager
  use("stevearc/oil.nvim")

  -- git
  use("lewis6991/gitsigns.nvim")
  use("tpope/vim-fugitive")
  use("tpope/vim-rhubarb")

  -- Clojure editing/development
  use("clojure-vim/vim-jack-in")
  use({
    "Olical/conjure",
    tag = "v4.22.1",
  })
  use("guns/vim-sexp")
  use("tpope/vim-sexp-mappings-for-regular-people")

  -- Job control
  use("tpope/vim-dispatch")
  use("radenling/vim-dispatch-neovim")

  -- Text Objects
  use("chrisgrieser/nvim-various-textobjs")

  -- QOL
  use("christoomey/vim-sort-motion")
  use("frazrepo/vim-rainbow")
  use("kylechui/nvim-surround")
  use("mbbill/undotree")
  use("mileszs/ack.vim")
  use("numToStr/Comment.nvim")
  use("nvim-tree/nvim-web-devicons")
  use("szw/vim-maximizer")
  use("tpope/vim-unimpaired")
  use("vim-scripts/ReplaceWithRegister")
  use("rebelot/terminal.nvim")

  -- utilities
  use("rktjmp/lush.nvim")
  use("tpope/vim-repeat")

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
