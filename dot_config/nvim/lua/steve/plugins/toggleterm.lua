return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    local toggleterm = require("toggleterm")

    toggleterm.setup({
      direction = "float",
    })

    local keymap = vim.keymap

    -- local opts = { silent = true }
    -- keymap("t", [[<C-\><C-\>]], [[<C-\><C-N>]], opts)
    -- keymap("t", [[<C-H>]], [[<C-\><C-N>h]], opts)
    -- keymap("t", [[<C-J>]], [[<C-\><C-N>j]], opts)
    -- keymap("t", [[<C-K>]], [[<C-\><C-N>k]], opts)
    -- keymap("t", [[<C-L>]], [[<C-\><C-N>l]], opts)

    keymap.set("n", "C-\\", ":ToggleTerm<CR>")
  end,
}
