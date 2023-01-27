local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  vim.notify("Can't require Comment")
   return
end

comment.setup()
