return {
  "Wansmer/sibling-swap.nvim",
  requires = { "nvim-treesitter" },
  config = function()
    require("sibling-swap").setup({
      keymaps = {
        ["<C-.>"] = "swap_with_right",
        ["<C-,>"] = "swap_with_left",
      },
    })
  end,
}
