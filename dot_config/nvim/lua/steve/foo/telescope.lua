return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.vim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,  -- move to previous result
            ["<C-j>"] = actions.move_selection_next,  -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },

        vimgrep_arguments = { "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--iglob",
          "!.git",
          "--hidden"
        },
      },

      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    })

    telescope.load_extension('fzf')

    local keymap = vim.keymap
    keymap.set('n', '<Leader>ff', ':Telescope find_files<CR>')
    keymap.set('n', '<Leader>fb', ':Telescope buffers<CR>')
    keymap.set('n', '<Leader>fg', ':Telescope live_grep<CR>')
    keymap.set('n', '<Leader>fc', ':Telescope grep_string<CR>')
    keymap.set('n', '<Leader>ft', ':Telescope tags<CR>')
  end,
}
