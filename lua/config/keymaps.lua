-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "

vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<S-Tab>", ":bprev<CR>", { noremap = true, silent = true })
-- map Esc để thoát terminal mode

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

vim.keymap.set("n", "<leader>bo", ":%bd|e#<CR>", { noremap = true, silent = true, desc = "Close other buffers" })

vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end, { desc = "Format buffer" })
