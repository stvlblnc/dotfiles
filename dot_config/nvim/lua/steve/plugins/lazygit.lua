return {
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGetCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  -- setting the keybindings for LazyGit with 'keys' is recommeneded in
  -- order to load the plugin when the command is run for the first time
  keys = {
    { "<Leader>lg", "<cmd>LazyGit<CR>", desc = "Open lazygit" },
  },
}
