vim.g.mapleader = " "
vim.g.localleader = "\\"

require("dennis.core")
require("dennis.lazy")

-- Actual editor config --
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard

vim.o.tabstop = 4
vim.o.expandtab = false
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

-- Keymaps to more easily move between windows --
vim.keymap.set('n', "<C-h>", "<cmd>wincmd h<CR>") -- move cursor to left window
vim.keymap.set('n', "<C-l>", "<cmd>wincmd l<CR>") -- move cursor to left window
vim.keymap.set('n', "<C-j>", "<cmd>wincmd j<CR>") -- move cursor to left window
vim.keymap.set('n', "<C-k>", "<cmd>wincmd k<CR>") -- move cursor to left window

-- Buffer motions --
vim.keymap.set('n', "<leader>bd", "<cmd>bdelete<CR>")

-- Lazy keymaps --
vim.keymap.set('n', "<leader>l", "<cmd>Lazy<CR>")

-- Lualine setup --
require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'auto',
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = false,
		always_show_tabline = true,
		globalstatus = false,
		refresh = {
			statusline = 100,
			tabline = 100,
			winbar = 100,
		}
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {'filename'},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
		},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
		},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
}

-- mini.nvim setup --
require('mini.pairs').setup({})
