return {
  "echasnovski/mini.nvim",
  version = false,

  config = function()
    -- require("mini.ai").setup({
    --   custom_textobjects = {
    --     v = {
    --       {
    --         "%u[%l%d]+%f[^%l%d]",
    --         "%f[%S][%l%d]+%f[^%l%d]",
    --         "%f[%P][%l%d]+%f[^%l%d]",
    --         "^[%l%d]+%f[^%l%d]",
    --         "%f[%S][%w]+%f[^%w]",
    --         "%f[%P][%w]+%f[^%w]",
    --         "%w+%f[^%w]",
    --       },
    --       "^().*()$",
    --     },
    --   },
    -- })
    require("mini.surround").setup()
    require("mini.operators").setup()
    require("mini.pairs").setup()
    -- require("mini.bracketed").setup()
    require("mini.files").setup()
  end,
}
