vim.g.mapleader = " "

-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- paste from specific registers
vim.keymap.set({ "n", "v" }, "p", [["0p]])
vim.keymap.set({ "n", "v" }, "<leader>pn", [[""p]])
vim.keymap.set({ "n", "v" }, "P", [["1p]])
vim.keymap.set({ "n", "v" }, "<leader>pi", [[".p]])

-- split up panes horizantally and vertically
vim.keymap.set({ "n", "v" }, "<leader>\\", [[<C-w>v]])
vim.keymap.set({ "n", "v" }, "<leader>-", [[<C-w>s]])
vim.keymap.set({ "n", "v" }, "<leader><CR>", [[<C-w>v]])

-- cursor movements along the panes
vim.keymap.set("n", "<leader>h", [[<C-w>h]])
vim.keymap.set("n", "<leader>j", [[<C-w>j]])
vim.keymap.set("n", "<leader>k", [[<C-w>k]])
vim.keymap.set("n", "<leader>l", [[<C-w>l]])

-- Clear search highligsts
vim.keymap.set("n", "<leader> ", ":nohlsearch<CR>")

-- Resize panes
vim.keymap.set({ "n", "v" }, "Q", ":vertical resize -5<CR>")
vim.keymap.set({ "n", "v" }, "<C-q>", ":vertical resize +5<CR>")
vim.keymap.set({ "n", "v" }, "<C-z>", ":vertical resize +100<CR>")
vim.keymap.set({ "n", "v" }, "<C-s>", ":vertical resize -100<CR>")

-- Move up and down on visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move up and down and center the cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Center the searched content
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Find the occurance of current word
vim.keymap.set("n", "<leader>/", "*")
