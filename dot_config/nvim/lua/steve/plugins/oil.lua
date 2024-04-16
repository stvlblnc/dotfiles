return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local oil = require("oil")
    oil.setup({
      columns = {
        "icon",
      },
      win_options = {
        wrap = false,
        signcolumn = "no",
        cursorcolumn = false,
      },
      restore_win_options = true,
      use_default_keymaps = true,
      keymaps = {
        ["C-v"] = "actions.select_vsplit",
        ["C-x"] = "actions.select_split",
        ["C-t"] = "actions.select_tab",
      },
    })

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
}
