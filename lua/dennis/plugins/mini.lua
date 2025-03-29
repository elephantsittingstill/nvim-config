return {
	'echasnovski/mini.nvim',
	version = false,

	-- mini.nvim setup --
	config = function()
		require('mini.pairs').setup({})
		local hipatterns = require('mini.hipatterns')
		hipatterns.setup({
			highlighters = {
				hex_color = hipatterns.gen_highlighter.hex_color()
			}
		})
	end,
}
