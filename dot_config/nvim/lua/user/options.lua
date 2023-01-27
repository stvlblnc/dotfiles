vim.cmd [[filetype plugin indent on]]
vim.cmd [[syntax enable]]

local opt = vim.opt

opt.encoding = "utf-8"

opt.number = true
opt.relativenumber = true

opt.smarttab = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

-- opt.cursorline = true
-- opt.cursorlineopt = "both"

opt.termguicolors = true
opt.signcolumn = "yes"

opt.backspace = {"indent", "eol", "start"}

opt.clipboard:append("unnamedplus")

vim.opt.splitbelow = true
vim.opt.splitright = true

opt.iskeyword:append("-")

opt.incsearch = true

opt.complete:remove("i")
opt.nrformats:remove("octal")

opt.backupdir = "~/.vim/backup//"
opt.directory = "~/.vim/swapfiles//"
opt.undodir = "~/.vim/undodir"
opt.undofile = true

opt.scrolloff = 1
opt.sidescrolloff = 5

opt.hlsearch = true

opt.sessionoptions:remove("options")
opt.viewoptions:remove("options")

opt.laststatus = 2
opt.ruler = true
opt.wildmenu = true
opt.display:append("lastline")
opt.formatoptions:append("j")
opt.autoread = true
opt.history = 1000
opt.tabpagemax = 50
opt.showcmd = true
opt.hidden = true
opt.infercase = true
opt.backup = false
opt.mouse = "a"

opt.showmode = false

opt.foldmethod = "manual"
opt.foldnestmax = 10
-- opt.foldenable = false
opt.foldlevel = 2

vim.opt_global.tags:remove("./tags")
vim.opt_global.tags:prepend("./tags")

table.insert(vim.opt.viminfo, 1, "!")

opt.grepprg = [[rg\ --vimgrep\ --smart-case]]
opt.grepformat = [[%f:%l:%c:%m,%f:%l:%m]]

vim.g.ackprg = "rg --vimgrep --no-heading"
vim.g.ack_autoclose = 1
vim.cmd [[cnoreabbrev Ack Ack!]]

if not vim.env.TMUX then
  vim.env.NVIM_TUI_ENABLE_TRUECOLOR = 1
  -- let &t_8f="[38;2;%lu;%lu;%lum"
  -- let &t_8b="[48;2;%lu;%lu;%lum"
end

-- vim:set ft=lua et sw=2:
