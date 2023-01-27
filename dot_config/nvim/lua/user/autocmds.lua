local vimrcExGroup = vim.api.nvim_create_augroup("vimrcEx", { clear = true })
vim.api.nvim_create_autocmd("FileType",
  { group = vimrcExGroup,
    pattern = "text",
    command = "setlocal textwidth=78" })
vim.api.nvim_create_autocmd("FileType",
  { group = vimrcExGroup,
    pattern = { "c", "cpp", "clj" },
    command = [[call rainbow#load()]] })
vim.api.nvim_create_autocmd("FileType",
  { group = vimrcExGroup,
    pattern = { "c", "cpp" },
    command = [[inoremap ;; <C-o>A;]] })
vim.api.nvim_create_autocmd("BufReadPost",
  { group = vimrcExGroup,
    command = [[if line("'\"") > 1 && line("'\"") < line("$") | execute "normal! g`\"" | endif]] })
