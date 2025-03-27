return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	---@module "neo-tree"
	---@type neotree.Config?
	opts = {
		window = {
			width = 40,
			auto_expand_width = false,
			position = "float",
		},
	},
	config = function()
		local keymap = vim.keymap

		keymap.set('n', "<leader>ef", "<cmd>Neotree float<CR>") -- toggle file explorer
		keymap.set('n', "<leader>eb", "<cmd>Neotree float buffers<CR>") -- toggle file explorer
	end
}

