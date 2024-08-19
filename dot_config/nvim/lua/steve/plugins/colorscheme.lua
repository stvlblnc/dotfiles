-- return {
--   "EdenEast/nightfox.nvim",
--   priority = 1000,
--   config = function()
--     local nightfox = require("nightfox")
--     nightfox.setup({
--       options = {
--         dim_inactive = true,
--         styles = {
--           comments = "italic",
--         },
--         inverse = {
--           match_paren = true, -- inverse the highlighting of match_parens
--         },
--       },
--     })
--
--     vim.cmd("colorscheme nightfox")
--   end,
-- }

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    local catppuccin = require("catppuccin")
    catppuccin.setup({
      flavor = "macchiato", -- latte, frappe, macchiato, mocha

      background = {
        light = "latte",
        dark = "macchiato",
      },

      integrations = {
        gitsigns = true,
        mason = true,
        telescope = {
          enabled = true,
          -- style = "nvchad"
        },
        gitgutter = true,
        which_key = true,
      },
    })

    vim.cmd("colorscheme catppuccin")
  end,
}
