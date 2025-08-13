local map = vim.keymap.set

-- disable keys
map("n", "<left>", "<nop>")
map("n", "<right>", "<nop>")
map("n", "<up>", "<nop>")
map("n", "<down>", "<nop>")
map("n", "<c-z>", "<nop>")

-- buffer
map("n", "<leader>q", "<cmd>bdelete<cr>")
map("n", "<leader>n", "<cmd>bn<cr>")
map("n", "<leader>p", "<cmd>bp<cr>")

-- window
map("n", "<c-h>", "<c-w>h")
map("n", "<c-j>", "<c-w>j")
map("n", "<c-k>", "<c-w>k")
map("n", "<c-l>", "<c-w>l")

map("n", "<leader>ac", "<cmd>!acommit<cr>")

-- tab
map("n", ">", ">>")
map("n", "<", "<<")
