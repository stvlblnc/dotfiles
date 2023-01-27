local status_ok, oil = pcall(require, "oil")
if not status_ok then
  vim.notify("Error requiring oil")
  return
end

oil.setup({
  columns = {
    "icon"
  },
  win_options = {
    wrap = false,
    signcolumn = "no",
    cursorcolumn = false,
  },
  restore_win_options = true,
  use_default_keymaps = true
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
