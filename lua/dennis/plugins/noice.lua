return {
	"folke/noice.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("noice").setup({
			-- Configuration options for Noice
			lsp = {
				signature = { enabled = false },
			},
			cmdline = {
				enabled = true,
				format = {
					cmdline = { "icon", "cmdline" },
				},
			},
			popupmenu = {
				enable = true,
				backspace = true,
			},
		})
	end,
}
