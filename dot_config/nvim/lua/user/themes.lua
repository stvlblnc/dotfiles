-- vim.g:material_theme_style = 'default-community'
-- vim.g:material_terminal_italics = 1
-- vim.cmd [[colorscheme base16-material]]

-- vim.ayucolor="mirage"
-- vim.cmd [[colorscheme ayu]]

-- vim.g:palenight_terminal_italics = 1
-- vim.cmd [[colorscheme palenight]]

-- vim.g:gruvbox_italic = 1
-- vim.g:gruvbox_contrast_dark = 'medium' -- soft, hard
-- vim.cmd [[colorscheme gruvbox]]

-- vim.g:github_style = light_default
-- vim.g:github_function_style = "italic"
-- vim.g:github_sidebars = ["qf", "vista_kind", "terminal", "packer"]
-- vim.g:github_colors = [hint = "orange", error = "#ff0000"]
-- vim.cmd [[colorscheme github_light]]

-- vim.opt.background = "light"

require('nightfox').setup({
   options = {
      dim_inactive = true,
      styles = {
         comments = "italic"
      },
      inverse = {
         match_paren = true, -- inverse the highlighting of match_parens
      }
   }
})

vim.cmd("colorscheme dayfox")
