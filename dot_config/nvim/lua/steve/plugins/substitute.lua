return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local substitute = require("substitute")

    substitute.setup()

    local keymap = vim.keymap

    keymap.set("n", "gr", substitute.operator, { desc = "Substitute with a motion" })
    keymap.set("n", "grr", substitute.line, { desc = "Substitute line" })
    keymap.set("n", "gre", substitute.eol, { desc = "Substitute to end of line" })
    keymap.set("x", "gr", substitute.visual, { desc = "Substitute in visual mode" })
  end,
}
