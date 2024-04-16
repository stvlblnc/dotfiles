return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  config = function()
    -- import the treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = {
        enable = true,
      },
      -- ensure these languages are ensure_installed
      ensure_installed = {
        "bash",
        "clojure",
        "cmake",
        "cpp",
        "fennel",
        "gitignore",
        "janet_simple",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "rust",
        "tmux",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "C-space",
          node_incremental = "C-space",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
