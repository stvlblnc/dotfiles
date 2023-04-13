local status_ok, various_textobjs = pcall(require, "various-textobjs")
if not status_ok then
  vim.notify("Error requiring various-textobjs")
  return
end

various_textobjs.setup{}
