return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local substitute = require("substitute")
    local range = require("substitute.range")
    local exchange = require("substitute.exchange")

    substitute.setup()

    local keymap = vim.keymap

    keymap.set("n", "s", substitute.operator, { noremap = true, desc = "Substitute with a motion" })
    keymap.set("n", "ss", substitute.line, { noremap = true, desc = "Substitute line" })
    keymap.set("n", "S", substitute.eol, { noremap = true, desc = "Substitute to end of line" })
    keymap.set("x", "s", substitute.visual, { noremap = true, desc = "Substitute in visual mode" })

    keymap.set("n", "<Leader>s", range.operator, { noremap = true, desc = "Substitute with a motion" })
    keymap.set("x", "<Leader>s", range.visual, { noremap = true, desc = "Substitute line" })
    keymap.set("n", "<Leader>ss", range.word, { noremap = true, desc = "Substitute to end of line" })

    -- keymap.set("n", "<Leader>sx", exchange.operator, { noremap = true, desc = "Exchange with a motion" })
    -- keymap.set("n", "<Leader>sxx", exchange.line, { noremap = true, desc = "Exchange line" })
    -- keymap.set("x", "<Leader>X", exchange.visual, { noremap = true, desc = "Exchange in visual mode" })
    -- keymap.set("n", "<Leader>sxc", exchange.clear, { noremap = true, desc = "Clear exchange selection" })
  end,
}
