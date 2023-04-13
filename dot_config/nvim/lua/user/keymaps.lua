local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

vim.keymap.set('n', '<SPACE>', '<Nop>')
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

keymap("n", "<C-C>", [[:nohlsearch]], opts)
-- keymap("n", "<C-C>", [[:nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR>]], opts)

keymap("i", "<C-U>", "<C-G>u<C-U>", opts)
keymap("i", "<C-W>", "<C-G>u<C-W>", opts)

keymap("t", [[<C-\><C-\>]], [[<C-\><C-N>]], opts)
-- keymap("t", [[<C-H>]], [[<C-\><C-N>h]], opts)
-- keymap("t", [[<C-J>]], [[<C-\><C-N>j]], opts)
-- keymap("t", [[<C-K>]], [[<C-\><C-N>k]], opts)
-- keymap("t", [[<C-L>]], [[<C-\><C-N>l]], opts)

keymap("n", "<Leader>$", [[:s/\s\+$//e]], term_opts)
keymap("n", "<Leader>a", ":Ack!<Space>", opts)

-- misc keymaps for plugins
keymap("n", "<Leader>sm", ":MaximizerToggle<CR>", opts)
keymap("n", "<Leader>ut", ":UndotreeToggle<CR>", opts)

-- quick access to global/visual 'search and replace'
-- keymap("n", "<Leader>s" ":%s/<C-r><C-w>//<Left>", opts)
-- keymap("x", "<Leader>s" "%sy:%s/<C-r>s//<Left>", opts)

