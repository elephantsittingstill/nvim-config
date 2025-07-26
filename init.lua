vim.g.mapleader = " "
vim.g.localleader = "\\"

require("dennis.core")
require("dennis.lazy")

vim.api.nvim_set_keymap('n', '<leader>z', [[:lua ZenSplitMode()<CR>]], { noremap = true, silent = true })

function ZenSplitMode()
	local wins = vim.api.nvim_tabpage_list_wins(0)
	local total_windows = #wins

	if total_windows == 1 then
		-- Save the current buffer
		local original_buf = vim.api.nvim_get_current_buf()

		-- Calculate widths
		local total_columns = vim.o.columns
		local center_width = 90
		local side_width = math.floor((total_columns - center_width) / 2)

		-- Create left vertical split (blank buffer)
		vim.cmd('vsplit')
		local left_win = vim.api.nvim_get_current_win()
		local left_buf = vim.api.nvim_create_buf(false, true) -- [listed=false, scratch=true]
		vim.api.nvim_win_set_buf(left_win, left_buf)
		vim.b.is_zen_side = true
		vim.api.nvim_win_set_option(left_win, 'number', false)
		vim.api.nvim_win_set_option(left_win, 'relativenumber', false)
		vim.api.nvim_win_set_option(left_win, 'signcolumn', 'no')
		vim.api.nvim_win_set_option(left_win, 'fillchars', 'eob: ')
		vim.api.nvim_win_set_width(left_win, side_width)
		-- vim.api.nvim_buf_set_name(left_buf, ' ')

		-- Move to center and create another vertical split
		vim.cmd('wincmd l')
		vim.cmd('vsplit')
		local center_win = vim.api.nvim_get_current_win()
		vim.api.nvim_win_set_buf(center_win, original_buf)
		vim.api.nvim_win_set_width(center_win, center_width)

		-- Move to right split and make it blank too
		vim.cmd('wincmd l')
		local right_win = vim.api.nvim_get_current_win()
		local right_buf = vim.api.nvim_create_buf(false, true)
		vim.api.nvim_win_set_buf(right_win, right_buf)
		vim.b.is_zen_side = true
		vim.api.nvim_win_set_option(right_win, 'number', false)
		vim.api.nvim_win_set_option(right_win, 'relativenumber', false)
		vim.api.nvim_win_set_option(right_win, 'signcolumn', 'no')
		vim.api.nvim_win_set_option(right_win, 'fillchars', 'eob: ')
		vim.api.nvim_win_set_width(right_win, side_width)
		-- vim.api.nvim_buf_set_name(right_buf, '  ')

		-- Return to center
		vim.api.nvim_set_current_win(center_win)
	elseif total_windows == 3 then
		-- Deactivate Zen Mode
		for _, win in ipairs(wins) do
			local buf = vim.api.nvim_win_get_buf(win)
			local ok, is_zen = pcall(function()
				return vim.api.nvim_buf_get_var(buf, "is_zen_side")
			end)
			if ok and is_zen then
				vim.api.nvim_win_close(win, true)
			end
		end
	else
		print("ZenSplitMode: Can only activate when one window is open.")
	end
end
