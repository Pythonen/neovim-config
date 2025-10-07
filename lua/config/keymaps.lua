-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

-- Better navigation
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "-", "<C-t>")

-- Better indent handling
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Move text up and down
keymap("v", "J", ":m .+1<CR>==")
keymap("v", "K", ":m .-2<CR>==")
keymap("x", "J", ":move '>+1<CR>gv-gv")
keymap("x", "K", ":move '<-2<CR>gv-gv")

-- Paste preserves primal yanked piece
keymap("v", "p", '"_dP')

-- Exit insert mode
keymap("i", "jk", "<Esc>")

-- LSP hover
keymap("n", "gh", vim.lsp.buf.hover, { desc = "LSP: Hover" })

local opts = { noremap = true, silent = true }
-- yank to system clipboard
keymap({ "n", "v", "x" }, "<leader>y", '"+y', opts)

-- paste from system clipboard
keymap({ "n", "v", "x" }, "<leader>p", '"+p', opts)
-- paste preserves primal yanked piece
keymap("v", "p", '"_dP', opts)
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)
