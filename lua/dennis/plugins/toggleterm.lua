return {
	'akinsho/toggleterm.nvim',
	version = "*",
	opts = {},
	config = function()
		-- toggleterm setup --
		require("toggleterm").setup ({
			open_mapping = [[<C-\>]],
			direction = "float",
			insert_mappings = false,
			start_in_insert = true,
			close_on_exit = true,
		})

		-- Keybind to toggle floating terminal
		vim.keymap.set("n", "<leader>t", function()
			require("toggleterm").toggle()
		end, { desc = "Toggle floating terminal" })

		-- Keybind to escape insert mode in terminal
		vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]],
		{ desc = "Exit insert mode in terminal" })
	end,
}

