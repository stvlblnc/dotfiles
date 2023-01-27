local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  vim.notify("Can't require telescope")
  return
end

telescope.setup {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },

    vimgrep_arguments = {"rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--iglob",
      "!.git",
      "--hidden"}
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case"
    }
  }
}

telescope.load_extension('fzf')

vim.keymap.set('n', '<Leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<Leader>fb', ':Telescope buffers<CR>')
vim.keymap.set('n', '<Leader>fg', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<Leader>fc', ':Telescope grep_string<CR>')
vim.keymap.set('n', '<Leader>fq', ':Telescope quickfix<CR>')
vim.keymap.set('n', '<Leader>fh', ':Telescope help_tags<CR>')
vim.keymap.set('n', '<Leader>ft', ':Telescope tags<CR>')
