local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  vim.notify("Error requiring treesitter")
  return
end

configs.setup({
  sync_install = false,
  highlight = {
    enable = true,
    -- disable = {""},
    additional_vim_regex_hightlighting = true, -- set to false if preferred
  },
  autopairs = {
    enable = true,
  },
  indent = {
    enable = true,
    -- disable = {""}
  },
  ensure_installed = {
    "cpp",
    "clojure",
    "python",
    "lua",
    "fennel",
    "help",
  },
})
