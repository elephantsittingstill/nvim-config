-- Keymaps to more easily move between windows --
vim.keymap.set('n', "<C-h>", "<cmd>wincmd h<CR>") -- move cursor to left window
vim.keymap.set('n', "<C-l>", "<cmd>wincmd l<CR>") -- move cursor to left window
vim.keymap.set('n', "<C-j>", "<cmd>wincmd j<CR>") -- move cursor to left window
vim.keymap.set('n', "<C-k>", "<cmd>wincmd k<CR>") -- move cursor to left window

-- Buffer motions --
vim.keymap.set('n', "<leader>bd", "<cmd>bdelete<CR>")

-- Lazy keymaps --
vim.keymap.set('n', "<leader>l", "<cmd>Lazy<CR>")

-- :noh when press ESC --
vim.keymap.set('n', "<ESC>", "<cmd>noh<CR>")

vim.keymap.set('i', "jk", "<Esc>")
vim.keymap.set('i', "kj", "<Esc>")

-- wrap selection in quotes --
vim.keymap.set("x", '"', function()
	-- Surround selected text with quotes
	vim.api.nvim_feedkeys('c"', 'n', true)             -- Enter change mode and insert quote
	vim.schedule(function()
		vim.api.nvim_feedkeys(vim.fn.getreg('"'), 'n', true) -- Paste selection
		vim.api.nvim_feedkeys('"', 'n', true)          -- Insert closing quote
	end)
end, { noremap = true, silent = true })
