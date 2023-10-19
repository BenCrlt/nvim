vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "lk", "<ESC>")

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>h")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")
keymap.set("n", "<leader>s&", "<C-w>h")
keymap.set("n", "<leader>sé", "<C-w>l")

keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")

--nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")

keymap.set("n", "<C-s>", ":w<CR>")
keymap.set("n", "<leader>b", "<C-z>")
keymap.set("n", "<C-z>", "u")
keymap.set("n", "<C-Q>", ":q<CR>")

keymap.set("n", "<C-g>", ":Neogit<CR>")

keymap.set("n", "<leader>df", ":DiffviewFileHistory %<CR>")
keymap.set("n", "<leader>da", ":DiffviewFileHistory<CR> ")
keymap.set("n", "<leader>dg", ":DiffviewFileHistory<CR> ")
keymap.set("n", "<leader>dc", ":DiffviewClose<CR>")
