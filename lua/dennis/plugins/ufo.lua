return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async" },

	config = function()
		vim.o.foldcolumn = '0'
		vim.o.foldlevel = 99
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true

		vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
		vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

		-- lsp determine folds
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.foldingRange = {
			dynamicRegisttation = false,
			lineFoldingOnly = true
		}
		local language_servers = vim.lsp.get_clients()
		for _, ls in ipairs(language_servers) do
			require('lspconfig')[ls].setup({
				capabilities = capabilities
			})
		end
		require('ufo').setup()
		-- require('ufo').setup({
		-- 	provider_selector = function(bufnr, filetype, buftype)
		-- 		return { 'treesitter', 'indent' }
		-- 	end
		-- })
	end
}
