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
map("n", "<leader>w", "<c-w>")

-- tab
map("n", ">", ">>")
map("n", "<", "<<")
