-- Keymaps to more easily move between windows --
vim.keymap.set('n', "<C-h>", "<cmd>wincmd h<CR>") -- move cursor to left window
vim.keymap.set('n', "<C-l>", "<cmd>wincmd l<CR>") -- move cursor to left window
vim.keymap.set('n', "<C-j>", "<cmd>wincmd j<CR>") -- move cursor to left window
vim.keymap.set('n', "<C-k>", "<cmd>wincmd k<CR>") -- move cursor to left window

-- Buffer motions --
vim.keymap.set('n', "<leader>bd", "<cmd>bdelete<CR>")

-- Lazy keymaps --
vim.keymap.set('n', "<leader>l", "<cmd>Lazy<CR>")

