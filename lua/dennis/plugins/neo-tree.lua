return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,

	config = function()
		require("neo-tree").setup({
			window = {
				width = 30,
				auto_expand_width = false,
				position = "left",
			},
		})
		local keymap = vim.keymap

		keymap.set('n', "<leader>et", "<cmd>Neotree toggle<CR>")  -- toggle file explorer
		keymap.set('n', "<leader>ef", "<cmd>Neotree float<CR>")   -- toggle floating explorer
		keymap.set('n', "<leader>eb", "<cmd>Neotree float buffers<CR>") -- toggle file explorer
	end
}
