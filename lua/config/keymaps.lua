-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set("n", "<leader>x", ":bd<cr>", { desc = "Close buffer" })
-- see https://vim.rtorr.com/ for some goodies.
local opts = { noremap = true, silent = true }

-- Toggle ZenMode, which will also pop up a fortune. See plugins/zenmode.lua
vim.keymap.set("n", "<leader>z", ":ZenMode<CR>", opts)

-- keymaps for moving in select mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv-gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv-gv", opts)

-- keymap for escaping insert and visual mode via CTRL+;
vim.keymap.set({ "i", "v" }, "<C-;>", "<Esc>", opts)

-- keymap for centering search results
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- taken from ThePrimeagen
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], opts)
vim.keymap.set("n", "<leader>Y", [["+Y]], opts)
