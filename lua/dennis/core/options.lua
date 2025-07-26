-- Actual editor config --
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
vim.opt.conceallevel = 2                                    -- this is for obsidian.nvim to work properly
vim.opt.scrolloff = 10

vim.o.tabstop = 4
vim.o.expandtab = false
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4  -- Number of spaces inserted when indenting
