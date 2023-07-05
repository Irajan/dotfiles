vim.g.mapleader = " "

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- paste from clipboard
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])

-- split up panes horizantally and vertically
vim.keymap.set({"n", "v",}, "<leader>\\", [[<C-w>v]])
vim.keymap.set({"n", "v",}, "<leader>-", [[<C-w>s]])
vim.keymap.set({"n", "v",}, "<leader><CR>", [[<C-w>v]])

-- cursor movements along the panes
vim.keymap.set("n", "<leader>h" , [[<C-w>h]])
vim.keymap.set("n", "<leader>j" , [[<C-w>j]])
vim.keymap.set("n", "<leader>k" , [[<C-w>k]])
vim.keymap.set("n", "<leader>l" , [[<C-w>l]])

-- File tree toggler 
vim.keymap.set("n", "<leader>x",vim.cmd.Ex)
