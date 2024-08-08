vim.cmd([[filetype plugin indent on]])
vim.cmd([[syntax enable]])

-- for conciseness
local opt = vim.opt

opt.encoding = "utf-8"

-- use relative line numbers (except for the current line)
opt.number = true
opt.relativenumber = true

-- set indent, use only space characters
opt.smarttab = true
opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.autoindent = true

-- don't wrap lines
opt.wrap = false

-- use incremental smartcase for searches
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- hightlight (underline) the line that the cursor is on
-- opt.cursorline = true
-- opt.cursorlineopt = "both"

-- use termguicolors
opt.termguicolors = true
opt.signcolumn = "yes"
opt.background = "dark"

-- make backspace work properly
opt.backspace = { "indent", "eol", "start" }

-- use system clipboard as default register
-- opt.clipboard:append("unnamedplus")

-- split below or right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- make a dash part of a word - good for lisps
opt.iskeyword:append("-")

opt.complete:remove("i")
opt.nrformats:remove("octal")

-- set up background files
opt.backupdir = "/Users/steve/.vim/backup//"
opt.directory = "/Users/steve/.vim/swapfiles//"
opt.undodir = "/Users/steve/.vim/undodir"
opt.undofile = true

-- set scrolling options
opt.scrolloff = 1
opt.sidescrolloff = 5

-- remove options from session and mkview files
opt.sessionoptions:remove("options")
opt.viewoptions:remove("options")

opt.laststatus = 2 -- always show the status line
opt.ruler = true -- show row and column in status line
opt.wildmenu = true -- show wildmenu
opt.display:append("lastline") -- ???
opt.formatoptions:append("j") -- remove comment leader on joins
opt.history = 1000
-- opt.infercase = true
opt.backup = false -- don't create backup files
opt.mouse = "a" -- enable the mouse

opt.showmode = false -- don't show the mode on the last line

-- folding
-- opt.foldenable = false
opt.foldmethod = "manual"
opt.foldnestmax = 10
opt.foldlevel = 2

-- use the tags file in the cwd first
vim.opt_global.tags:remove("./tags")
vim.opt_global.tags:prepend("./tags")

-- save caps global variables to shada file
table.insert(vim.opt.viminfo, 1, "!")

-- Use ripgrep as default grep command
opt.grepprg = [[rg\ --vimgrep\ --smart-case]]
opt.grepformat = [[%f:%l:%c:%m,%f:%l:%m]]

-- mess with tmux amd truecolor - probably not needed now
-- if not vim.env.TMUX then
--   vim.env.NVIM_TUI_ENABLE_TRUECOLOR = 1
--   -- let &t_8f="[38;2;%lu;%lu;%lum"
--   -- let &t_8b="[48;2;%lu;%lu;%lum"
-- end

-- vim:set ft=lua et sw=2:
