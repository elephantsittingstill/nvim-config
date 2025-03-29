return {
	{ -- mason
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{ -- mason-lspconfig
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"ast_grep"
				}
			})
		end
	},
	{ -- lspconfig
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({
				capabilities = capabilities,
				filetypes = { "c", "h" }
			})
			lspconfig.ast_grep.setup({ capabilities = capabilities })
			lspconfig.hls.setup({ capabilities = capabilities })

			-- Lsp Keymaps
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}
