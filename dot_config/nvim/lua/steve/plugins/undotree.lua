return {
  "jiaoshijie/undotree",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local undotree = require("undotree")

    undotree.setup()

    vim.keymap.set("n", "<Leader>u", undotree.toggle, { desc = "Open and close the undo tree." })
  end,
}
