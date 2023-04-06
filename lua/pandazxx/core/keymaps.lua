vim.g.mapleader = " "

local km = vim.keymap

-- km.set("i", "jj", "<ESC>")
km.set("n", "<leader>ch", ":nohl<CR>")

-- no yank
km.set("n", "x", '"_x')


-- split windows
km.set("n", "<leader>spv", "<C-w>v")
km.set("n", "<leader>sph", "<C-w>h")
km.set("n", "<leader>spe", "<C-w>=")
km.set("n", "<leader>spx", ":close<CR>")

-- tabs
km.set("n", "<leader>tN", ":tabnew<CR>")
km.set("n", "<leader>tx", ":tabclose<CR>")
km.set("n", "<leader>tn", ":tabn<CR>")
km.set("n", "<leader>tp", ":tabp<CR>")

-- easy comand
km.set("n", ";", ":")

-- nvim-tree
km.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer


-- vim-maximizer
km.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization


