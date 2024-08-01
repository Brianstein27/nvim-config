return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
        null_ls.builtins.formatting.rustywind,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.erb_format,
				null_ls.builtins.diagnostics.erb_lint,
			},
		})

		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
	end,
}