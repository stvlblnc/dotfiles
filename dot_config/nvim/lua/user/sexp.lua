local status_ok, sexp = pcall(require, "sexp")
if not status_ok then
   return
end

vim.g.sexp_filetypes = "clojure,scheme,lisp,timl,fennel,janet"
