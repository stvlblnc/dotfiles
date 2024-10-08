-- for conciseness
local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }
local keymap = vim.keymap

keymap.set("n", "<SPACE>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = ","

keymap.set("n", "<C-C>", [[:nohlsearch<CR>]], { noremap = true, silent = true, desc = "Clear search highlights" })
-- keymap("n", "<C-C>", [[:nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR>]], opts)

keymap.set("i", "<C-U>", "<C-G>u<C-U>", opts)
keymap.set("i", "<C-W>", "<C-G>u<C-W>", opts)

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<CMD>close<CR>", { desc = "Close current split" })

-- tab management
keymap.set("n", "<leader>to", "<CMD>tabnew<CR>", { desc = "Open a new tab" })
keymap.set("n", "<leader>tx", "<CMD>tabclose<CR>", { desc = "Close the current tab" })
keymap.set("n", "<leader>tf", "<CMD>tabnew %<CR>", { desc = "Open the current buffer in a new tab" })
