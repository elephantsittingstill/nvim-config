return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	config = function()
		local keymap = vim.keymap

		keymap.set('n', "<leader>ff", "<cmd>FzfLua files<CR>") -- open file search
		keymap.set('n', "<leader>fg", "<cmd>FzfLua live_grep<CR>") -- open visual grep search
	end
}
