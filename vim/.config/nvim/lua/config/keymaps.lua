-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("v", "<leader>p", '"_dP')
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "<leader>o", ":2winc l | split | 2winc h | norm o<CR>")
vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")
vim.keymap.set("n", "<leader>rs", function()
  require("refactoring").debug.printf({ below = false })
end, { desc = "Console log a statement" })

vim.keymap.set({ "x", "n" }, "<leader>rv", function()
  require("refactoring").debug.print_var()
end, { desc = "Console log a variable" })

vim.keymap.set("n", "<leader>rc", function()
  require("refactoring").debug.cleanup({})
end, { desc = "Clean console logs" })
