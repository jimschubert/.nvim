-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set("n", "<leader>x", ":bd<cr>", { desc = "Close buffer" })
-- see https://vim.rtorr.com/ for some goodies.

-- Toggle ZenMode, which will also pop up a fortune. See plugins/zenmode.lua
vim.keymap.set("n", "<leader>z", ":ZenMode<CR>")

-- taken from ThePrimeagen
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
